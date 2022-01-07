
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hwrng {scalar_t__ priv; } ;
struct amd768_priv {scalar_t__ iobase; } ;


 scalar_t__ RNGDATA ;
 scalar_t__ RNGDONE ;
 scalar_t__ ioread32 (scalar_t__) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int amd_rng_read(struct hwrng *rng, void *buf, size_t max, bool wait)
{
 u32 *data = buf;
 struct amd768_priv *priv = (struct amd768_priv *)rng->priv;
 size_t read = 0;

 int timeout = max / 4 + 1;






 while (read < max) {
  if (ioread32(priv->iobase + RNGDONE) == 0) {
   if (wait) {

    usleep_range(128, 196);
    if (timeout-- == 0)
     return read;
   } else {
    return 0;
   }
  } else {
   *data = ioread32(priv->iobase + RNGDATA);
   data++;
   read += 4;
  }
 }

 return read;
}
