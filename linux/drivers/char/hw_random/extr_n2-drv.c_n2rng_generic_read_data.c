
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int ENODEV ;
 int EPERM ;
 int EWOULDBLOCK ;
 unsigned long HV_EIO ;
 unsigned long HV_ENOACCESS ;
 unsigned long HV_EOK ;
 unsigned long HV_EWOULDBLOCK ;
 int N2RNG_BLOCK_LIMIT ;
 int N2RNG_HCHECK_LIMIT ;
 int __delay (unsigned long) ;
 unsigned long sun4v_rng_data_read (unsigned long,unsigned long*) ;
 int udelay (int) ;

__attribute__((used)) static int n2rng_generic_read_data(unsigned long data_ra)
{
 unsigned long ticks, hv_err;
 int block = 0, hcheck = 0;

 while (1) {
  hv_err = sun4v_rng_data_read(data_ra, &ticks);
  if (hv_err == HV_EOK)
   return 0;

  if (hv_err == HV_EWOULDBLOCK) {
   if (++block >= N2RNG_BLOCK_LIMIT)
    return -EWOULDBLOCK;
   __delay(ticks);
  } else if (hv_err == HV_ENOACCESS) {
   return -EPERM;
  } else if (hv_err == HV_EIO) {
   if (++hcheck >= N2RNG_HCHECK_LIMIT)
    return -EIO;
   udelay(10000);
  } else
   return -ENODEV;
 }
}
