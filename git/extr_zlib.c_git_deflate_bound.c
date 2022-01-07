
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int z; } ;
typedef TYPE_1__ git_zstream ;


 unsigned long deflateBound (int *,unsigned long) ;

unsigned long git_deflate_bound(git_zstream *strm, unsigned long size)
{
 return deflateBound(&strm->z, size);
}
