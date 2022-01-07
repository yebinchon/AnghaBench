
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATA_PORT_COMMAND ;
 int ATA_STATUS_ERR_BIT ;
 int MAX_NO_ERROR_LOOPS ;
 int SATA_INT_STATUS_ERROR_BIT ;
 int SATA_INT_STATUS_OFF ;
 int ide_inb (int,int ) ;
 int printf (char*) ;
 int** sata_regs_base ;
 int udelay (int) ;

__attribute__((used)) static inline int wait_no_error(int device)
{
 int status = 0;


 if (*(sata_regs_base[device] + SATA_INT_STATUS_OFF)
  & (1 << SATA_INT_STATUS_ERROR_BIT)) {
  printf("wait_no_error() SATA core flagged error\n");
 } else {
  int loops = MAX_NO_ERROR_LOOPS;
  do {

   if (!(ide_inb(device, ATA_PORT_COMMAND)
    & (1 << ATA_STATUS_ERR_BIT))) {
    status = 1;
    break;
   }
   udelay(10);
  } while (--loops);

  if (!loops) {
   printf("wait_no_error() Timed out of wait for SATA no-error condition\n");
  }
 }

 return status;
}
