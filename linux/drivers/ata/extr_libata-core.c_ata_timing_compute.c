
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ata_timing {int cycle; int cyc8b; scalar_t__ act8b; scalar_t__ rec8b; scalar_t__ active; scalar_t__ recover; } ;
struct ata_device {int* id; unsigned short pio_mode; } ;
typedef int p ;


 size_t ATA_ID_EIDE_DMA_MIN ;
 size_t ATA_ID_EIDE_PIO ;
 size_t ATA_ID_EIDE_PIO_IORDY ;
 size_t ATA_ID_FIELD_VALID ;
 int ATA_TIMING_ALL ;
 int ATA_TIMING_CYC8B ;
 int ATA_TIMING_CYCLE ;
 int EINVAL ;
 unsigned short XFER_MW_DMA_0 ;
 unsigned short XFER_MW_DMA_2 ;
 unsigned short XFER_PIO_0 ;
 unsigned short XFER_PIO_2 ;
 unsigned short XFER_PIO_4 ;
 unsigned short XFER_PIO_5 ;
 unsigned short XFER_PIO_6 ;
 unsigned short XFER_SW_DMA_0 ;
 int ata_id_is_cfa (int const*) ;
 struct ata_timing* ata_timing_find_mode (unsigned short) ;
 int ata_timing_merge (struct ata_timing*,struct ata_timing*,struct ata_timing*,int) ;
 int ata_timing_quantize (struct ata_timing*,struct ata_timing*,int,int) ;
 int memcpy (struct ata_timing*,struct ata_timing const*,int) ;
 int memset (struct ata_timing*,int ,int) ;

int ata_timing_compute(struct ata_device *adev, unsigned short speed,
         struct ata_timing *t, int T, int UT)
{
 const u16 *id = adev->id;
 const struct ata_timing *s;
 struct ata_timing p;





 if (!(s = ata_timing_find_mode(speed)))
  return -EINVAL;

 memcpy(t, s, sizeof(*s));






 if (id[ATA_ID_FIELD_VALID] & 2) {
  memset(&p, 0, sizeof(p));

  if (speed >= XFER_PIO_0 && speed < XFER_SW_DMA_0) {
   if (speed <= XFER_PIO_2)
    p.cycle = p.cyc8b = id[ATA_ID_EIDE_PIO];
   else if ((speed <= XFER_PIO_4) ||
     (speed == XFER_PIO_5 && !ata_id_is_cfa(id)))
    p.cycle = p.cyc8b = id[ATA_ID_EIDE_PIO_IORDY];
  } else if (speed >= XFER_MW_DMA_0 && speed <= XFER_MW_DMA_2)
   p.cycle = id[ATA_ID_EIDE_DMA_MIN];

  ata_timing_merge(&p, t, t, ATA_TIMING_CYCLE | ATA_TIMING_CYC8B);
 }





 ata_timing_quantize(t, t, T, UT);







 if (speed > XFER_PIO_6) {
  ata_timing_compute(adev, adev->pio_mode, &p, T, UT);
  ata_timing_merge(&p, t, t, ATA_TIMING_ALL);
 }





 if (t->act8b + t->rec8b < t->cyc8b) {
  t->act8b += (t->cyc8b - (t->act8b + t->rec8b)) / 2;
  t->rec8b = t->cyc8b - t->act8b;
 }

 if (t->active + t->recover < t->cycle) {
  t->active += (t->cycle - (t->active + t->recover)) / 2;
  t->recover = t->cycle - t->active;
 }




 if (t->active + t->recover > t->cycle)
  t->cycle = t->active + t->recover;

 return 0;
}
