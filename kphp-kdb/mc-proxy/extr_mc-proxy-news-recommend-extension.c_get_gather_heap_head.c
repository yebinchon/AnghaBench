
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* cur; } ;


 TYPE_1__** GH ;
 scalar_t__ GH_N ;

__attribute__((used)) static int *get_gather_heap_head (void) {
  return GH_N ? GH[1]->cur : 0;
}
