
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_scsi_args {int dummy; } ;


 int VPRINTK (char*) ;

__attribute__((used)) static unsigned int ata_scsiop_report_luns(struct ata_scsi_args *args, u8 *rbuf)
{
 VPRINTK("ENTER\n");
 rbuf[3] = 8;

 return 0;
}
