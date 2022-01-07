
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {void* length; } ;
struct TYPE_5__ {void* length; void* hsn; void* tsn; } ;
struct TYPE_4__ {void* length; } ;
struct opal_header {TYPE_3__ cp; TYPE_2__ pkt; TYPE_1__ subpkt; } ;
struct opal_dev {int pos; scalar_t__* cmd; } ;


 int EFAULT ;
 int ERANGE ;
 int IO_BUFFER_LENGTH ;
 int OPAL_ENDLIST ;
 int OPAL_ENDOFDATA ;
 int OPAL_STARTLIST ;
 int add_token_u8 (int*,struct opal_dev*,int ) ;
 void* cpu_to_be32 (int) ;
 int pr_debug (char*) ;

__attribute__((used)) static int cmd_finalize(struct opal_dev *cmd, u32 hsn, u32 tsn)
{
 struct opal_header *hdr;
 int err = 0;






 add_token_u8(&err, cmd, OPAL_ENDLIST);

 add_token_u8(&err, cmd, OPAL_ENDOFDATA);
 add_token_u8(&err, cmd, OPAL_STARTLIST);
 add_token_u8(&err, cmd, 0);
 add_token_u8(&err, cmd, 0);
 add_token_u8(&err, cmd, 0);
 add_token_u8(&err, cmd, OPAL_ENDLIST);

 if (err) {
  pr_debug("Error finalizing command.\n");
  return -EFAULT;
 }

 hdr = (struct opal_header *) cmd->cmd;

 hdr->pkt.tsn = cpu_to_be32(tsn);
 hdr->pkt.hsn = cpu_to_be32(hsn);

 hdr->subpkt.length = cpu_to_be32(cmd->pos - sizeof(*hdr));
 while (cmd->pos % 4) {
  if (cmd->pos >= IO_BUFFER_LENGTH) {
   pr_debug("Error: Buffer overrun\n");
   return -ERANGE;
  }
  cmd->cmd[cmd->pos++] = 0;
 }
 hdr->pkt.length = cpu_to_be32(cmd->pos - sizeof(hdr->cp) -
          sizeof(hdr->pkt));
 hdr->cp.length = cpu_to_be32(cmd->pos - sizeof(hdr->cp));

 return 0;
}
