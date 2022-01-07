
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct packet_command {int* cmd; int buflen; } ;
struct TYPE_5__ {int pending; int cd_info; } ;
struct TYPE_4__ {int text; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EBUSY ;
 int EIO ;
 int ENOMEM ;
 int GDROM_DATA_REG ;
 int GDROM_DEFAULT_TIMEOUT ;
 int GFP_KERNEL ;
 int command_queue ;
 TYPE_2__ gd ;
 int gdrom_packetcommand (int ,struct packet_command*) ;
 int gdrom_wait_clrbusy () ;
 int insw (int ,short**,int) ;
 int kfree (struct packet_command*) ;
 struct packet_command* kzalloc (int,int ) ;
 int memcpy (short*,short*,int) ;
 int pr_err (char*,int) ;
 int pr_info (char*,...) ;
 TYPE_1__* sense_texts ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int gdrom_getsense(short *bufstring)
{
 struct packet_command *sense_command;
 short sense[5];
 int sense_key;
 int err = -EIO;

 sense_command = kzalloc(sizeof(struct packet_command), GFP_KERNEL);
 if (!sense_command)
  return -ENOMEM;
 sense_command->cmd[0] = 0x13;
 sense_command->cmd[4] = 10;
 sense_command->buflen = 10;


 if (gd.pending && !gdrom_wait_clrbusy()) {
  err = -EBUSY;
  goto cleanup_sense_final;
 }
 gd.pending = 1;
 gdrom_packetcommand(gd.cd_info, sense_command);
 wait_event_interruptible_timeout(command_queue, gd.pending == 0,
  GDROM_DEFAULT_TIMEOUT);
 if (gd.pending)
  goto cleanup_sense;
 insw(GDROM_DATA_REG, &sense, sense_command->buflen/2);
 if (sense[1] & 40) {
  pr_info("Drive not ready - command aborted\n");
  goto cleanup_sense;
 }
 sense_key = sense[1] & 0x0F;
 if (sense_key < ARRAY_SIZE(sense_texts))
  pr_info("%s\n", sense_texts[sense_key].text);
 else
  pr_err("Unknown sense key: %d\n", sense_key);
 if (bufstring)
  memcpy(bufstring, &sense[4], 2);
 if (sense_key < 2)
  err = 0;

cleanup_sense:
 gd.pending = 0;
cleanup_sense_final:
 kfree(sense_command);
 return err;
}
