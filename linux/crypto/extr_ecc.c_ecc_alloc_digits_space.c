
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int GFP_KERNEL ;
 int * kmalloc (size_t,int ) ;

__attribute__((used)) static u64 *ecc_alloc_digits_space(unsigned int ndigits)
{
 size_t len = ndigits * sizeof(u64);

 if (!len)
  return ((void*)0);

 return kmalloc(len, GFP_KERNEL);
}
