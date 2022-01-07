
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int nr_vecs; } ;


 TYPE_1__* bvec_slabs ;

unsigned int bvec_nr_vecs(unsigned short idx)
{
 return bvec_slabs[--idx].nr_vecs;
}
