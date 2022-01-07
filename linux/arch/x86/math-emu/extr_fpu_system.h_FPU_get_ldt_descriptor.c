
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct desc_struct {int dummy; } ;
struct TYPE_8__ {TYPE_3__* mm; } ;
struct TYPE_5__ {int lock; TYPE_2__* ldt; } ;
struct TYPE_7__ {TYPE_1__ context; } ;
struct TYPE_6__ {unsigned int nr_entries; struct desc_struct* entries; } ;


 TYPE_4__* current ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static inline struct desc_struct FPU_get_ldt_descriptor(unsigned seg)
{
 static struct desc_struct zero_desc;
 struct desc_struct ret = zero_desc;
 return ret;
}
