
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __wsum ;


 int csum_partial (void const*,int,int ) ;
 int memcpy (void*,void const*,int) ;

__wsum csum_partial_copy_nocheck(const void *src, void *dst,
           int len, __wsum sum)
{




 sum = csum_partial(src, len, sum);
 memcpy(dst, src, len);

 return sum;
}
