
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pi_desc {scalar_t__ pir; } ;


 int NR_VECTORS ;
 int bitmap_empty (unsigned long*,int ) ;

__attribute__((used)) static inline bool pi_is_pir_empty(struct pi_desc *pi_desc)
{
 return bitmap_empty((unsigned long *)pi_desc->pir, NR_VECTORS);
}
