
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __wsum ;


 int csum_partial_copy_generic (void const*,void*,int,int ,int *,int *) ;

__wsum
csum_partial_copy_nocheck(const void *src, void *dst, int len, __wsum sum)
{
 return csum_partial_copy_generic(src, dst, len, sum, ((void*)0), ((void*)0));
}
