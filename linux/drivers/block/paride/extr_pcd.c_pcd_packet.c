
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_command {int buffer; int buflen; int cmd; } ;
struct cdrom_device_info {int handle; } ;


 int pcd_atapi (int ,int ,int ,int ,char*) ;

__attribute__((used)) static int pcd_packet(struct cdrom_device_info *cdi, struct packet_command *cgc)
{
 return pcd_atapi(cdi->handle, cgc->cmd, cgc->buflen, cgc->buffer,
    "generic packet");
}
