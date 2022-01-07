
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


struct TYPE_14__ {int size; } ;
struct TYPE_13__ {int size; } ;
struct TYPE_12__ {int size; } ;
struct TYPE_11__ {int size; } ;
struct TYPE_10__ {int size; } ;
struct TYPE_9__ {TYPE_1__* driver; void* current_size; } ;
struct TYPE_8__ {int size_type; } ;


 TYPE_7__* A_SIZE_16 (void*) ;
 TYPE_6__* A_SIZE_32 (void*) ;
 TYPE_5__* A_SIZE_8 (void*) ;
 TYPE_4__* A_SIZE_FIX (void*) ;
 TYPE_3__* A_SIZE_LVL2 (void*) ;





 TYPE_2__* agp_bridge ;
 int agp_memory_reserved ;

__attribute__((used)) static int agp_return_size(void)
{
 int current_size;
 void *temp;

 temp = agp_bridge->current_size;

 switch (agp_bridge->driver->size_type) {
 case 128:
  current_size = A_SIZE_8(temp)->size;
  break;
 case 130:
  current_size = A_SIZE_16(temp)->size;
  break;
 case 129:
  current_size = A_SIZE_32(temp)->size;
  break;
 case 131:
  current_size = A_SIZE_LVL2(temp)->size;
  break;
 case 132:
  current_size = A_SIZE_FIX(temp)->size;
  break;
 default:
  current_size = 0;
  break;
 }

 current_size -= (agp_memory_reserved / (1024*1024));
 if (current_size <0)
  current_size = 0;
 return current_size;
}
