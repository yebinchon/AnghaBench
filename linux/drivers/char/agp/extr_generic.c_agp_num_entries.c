
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {int num_entries; } ;
struct TYPE_13__ {int num_entries; } ;
struct TYPE_12__ {int num_entries; } ;
struct TYPE_11__ {int num_entries; } ;
struct TYPE_10__ {int num_entries; } ;
struct TYPE_9__ {TYPE_1__* driver; void* current_size; } ;
struct TYPE_8__ {int size_type; } ;


 TYPE_7__* A_SIZE_16 (void*) ;
 TYPE_6__* A_SIZE_32 (void*) ;
 TYPE_5__* A_SIZE_8 (void*) ;
 TYPE_4__* A_SIZE_FIX (void*) ;
 TYPE_3__* A_SIZE_LVL2 (void*) ;


 int PAGE_SHIFT ;



 TYPE_2__* agp_bridge ;
 int agp_memory_reserved ;

int agp_num_entries(void)
{
 int num_entries;
 void *temp;

 temp = agp_bridge->current_size;

 switch (agp_bridge->driver->size_type) {
 case 128:
  num_entries = A_SIZE_8(temp)->num_entries;
  break;
 case 130:
  num_entries = A_SIZE_16(temp)->num_entries;
  break;
 case 129:
  num_entries = A_SIZE_32(temp)->num_entries;
  break;
 case 131:
  num_entries = A_SIZE_LVL2(temp)->num_entries;
  break;
 case 132:
  num_entries = A_SIZE_FIX(temp)->num_entries;
  break;
 default:
  num_entries = 0;
  break;
 }

 num_entries -= agp_memory_reserved>>PAGE_SHIFT;
 if (num_entries<0)
  num_entries = 0;
 return num_entries;
}
