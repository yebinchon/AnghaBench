
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



 int ATA_BUSY ;






 int pr_err (char*,unsigned int,int,int,int,int,int) ;

__attribute__((used)) static void ata_to_sense_error(unsigned id, u8 drv_stat, u8 drv_err, u8 *sk,
          u8 *asc, u8 *ascq, int verbose)
{
 int i;


 static const unsigned char sense_table[][4] = {

  {0xd1, 134, 0x00, 0x00},


  {0xd0, 134, 0x00, 0x00},


  {0x61, 133, 0x00, 0x00},


  {0x84, 134, 0x47, 0x00},


  {0x37, 130, 0x04, 0x00},


  {0x09, 130, 0x04, 0x00},


  {0x01, 131, 0x13, 0x00},


  {0x02, 133, 0x00, 0x00},



  {0x08, 130, 0x04, 0x00},


  {0x10, 132, 0x21, 0x00},


  {0x20, 128, 0x28, 0x00},


  {0x40, 131, 0x11, 0x04},


  {0x80, 131, 0x11, 0x04},

  {0xFF, 0xFF, 0xFF, 0xFF},
 };
 static const unsigned char stat_table[][4] = {

  {0x80, 134, 0x47, 0x00},

  {0x40, 132, 0x21, 0x04},

  {0x20, 133, 0x44, 0x00},

  {0x08, 134, 0x47, 0x00},

  {0x04, 129, 0x11, 0x00},

  {0xFF, 0xFF, 0xFF, 0xFF},
 };




 if (drv_stat & ATA_BUSY) {
  drv_err = 0;
 }

 if (drv_err) {

  for (i = 0; sense_table[i][0] != 0xFF; i++) {

   if ((sense_table[i][0] & drv_err) ==
       sense_table[i][0]) {
    *sk = sense_table[i][1];
    *asc = sense_table[i][2];
    *ascq = sense_table[i][3];
    goto translate_done;
   }
  }
 }






 for (i = 0; stat_table[i][0] != 0xFF; i++) {
  if (stat_table[i][0] & drv_stat) {
   *sk = stat_table[i][1];
   *asc = stat_table[i][2];
   *ascq = stat_table[i][3];
   goto translate_done;
  }
 }





 *sk = 134;
 *asc = 0x00;
 *ascq = 0x00;

 translate_done:
 if (verbose)
  pr_err("ata%u: translated ATA stat/err 0x%02x/%02x to SCSI SK/ASC/ASCQ 0x%x/%02x/%02x\n",
         id, drv_stat, drv_err, *sk, *asc, *ascq);
 return;
}
