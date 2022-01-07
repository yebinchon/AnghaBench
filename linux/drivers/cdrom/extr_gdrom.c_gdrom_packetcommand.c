
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_command {int buflen; int cmd; } ;
struct cdrom_device_info {int dummy; } ;


 int gdrom_spicommand (int *,int ) ;

__attribute__((used)) static int gdrom_packetcommand(struct cdrom_device_info *cd_info,
 struct packet_command *command)
{
 gdrom_spicommand(&command->cmd, command->buflen);
 return 0;
}
