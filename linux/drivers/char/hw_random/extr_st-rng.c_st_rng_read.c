
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef void* u16 ;
struct st_rng_data {scalar_t__ base; } ;
struct hwrng {scalar_t__ priv; } ;


 scalar_t__ ST_RNG_DATA_REG ;
 int ST_RNG_FIFO_SIZE ;
 int ST_RNG_FILL_FIFO_TIMEOUT ;
 int ST_RNG_STATUS_FIFO_FULL ;
 scalar_t__ ST_RNG_STATUS_REG ;
 void* readl_relaxed (scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int st_rng_read(struct hwrng *rng, void *data, size_t max, bool wait)
{
 struct st_rng_data *ddata = (struct st_rng_data *)rng->priv;
 u32 status;
 int i;


 for (i = 0; i < ST_RNG_FILL_FIFO_TIMEOUT; i++) {
  status = readl_relaxed(ddata->base + ST_RNG_STATUS_REG);
  if (status & ST_RNG_STATUS_FIFO_FULL)
   break;
  udelay(1);
 }

 if (i == ST_RNG_FILL_FIFO_TIMEOUT)
  return 0;

 for (i = 0; i < ST_RNG_FIFO_SIZE && i < max; i += 2)
  *(u16 *)(data + i) =
   readl_relaxed(ddata->base + ST_RNG_DATA_REG);

 return i;
}
