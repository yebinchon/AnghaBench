
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct spu {int dummy; } ;


 int spu_int_mask_get (struct spu*,int) ;
 int spu_int_mask_set (struct spu*,int,int) ;

__attribute__((used)) static void int_mask_or(struct spu *spu, int class, u64 mask)
{
 u64 old_mask;

 old_mask = spu_int_mask_get(spu, class);
 spu_int_mask_set(spu, class, old_mask | mask);
}
