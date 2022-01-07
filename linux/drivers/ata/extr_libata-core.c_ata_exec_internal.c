
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scatterlist {int dummy; } ;
struct ata_taskfile {int dummy; } ;
struct ata_device {int dummy; } ;


 int DMA_NONE ;
 int WARN_ON (int) ;
 int ata_exec_internal_sg (struct ata_device*,struct ata_taskfile*,int const*,int,struct scatterlist*,unsigned int,unsigned long) ;
 int sg_init_one (struct scatterlist*,void*,unsigned int) ;

unsigned ata_exec_internal(struct ata_device *dev,
      struct ata_taskfile *tf, const u8 *cdb,
      int dma_dir, void *buf, unsigned int buflen,
      unsigned long timeout)
{
 struct scatterlist *psg = ((void*)0), sg;
 unsigned int n_elem = 0;

 if (dma_dir != DMA_NONE) {
  WARN_ON(!buf);
  sg_init_one(&sg, buf, buflen);
  psg = &sg;
  n_elem++;
 }

 return ata_exec_internal_sg(dev, tf, cdb, dma_dir, psg, n_elem,
        timeout);
}
