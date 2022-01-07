
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long size; void* ptr; } ;
typedef TYPE_1__ mmfile_t ;



void *xdl_mmfile_first(mmfile_t *mmf, long *size)
{
 *size = mmf->size;
 return mmf->ptr;
}
