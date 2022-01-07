
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hwrng {int priv; } ;



__attribute__((used)) static int via_rng_data_read(struct hwrng *rng, u32 *data)
{
 u32 via_rng_datum = (u32)rng->priv;

 *data = via_rng_datum;

 return 1;
}
