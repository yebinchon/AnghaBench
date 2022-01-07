
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cache_size; } ;
typedef TYPE_1__ BGZF ;



void bgzf_set_cache_size(BGZF *fp, int cache_size)
{
 if (fp) fp->cache_size = cache_size;
}
