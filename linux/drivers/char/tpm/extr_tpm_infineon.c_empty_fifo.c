
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dummy; } ;


 int EIO ;
 int RDFIFO ;
 int STAT ;
 int STAT_RDA ;
 int TPM_MAX_TRIES ;
 int WRFIFO ;
 int tpm_data_in (int ) ;

__attribute__((used)) static int empty_fifo(struct tpm_chip *chip, int clear_wrfifo)
{
 int status;
 int check = 0;
 int i;

 if (clear_wrfifo) {
  for (i = 0; i < 4096; i++) {
   status = tpm_data_in(WRFIFO);
   if (status == 0xff) {
    if (check == 5)
     break;
    else
     check++;
   }
  }
 }
 i = 0;
 do {
  status = tpm_data_in(RDFIFO);
  status = tpm_data_in(STAT);
  i++;
  if (i == TPM_MAX_TRIES)
   return -EIO;
 } while ((status & (1 << STAT_RDA)) != 0);
 return 0;
}
