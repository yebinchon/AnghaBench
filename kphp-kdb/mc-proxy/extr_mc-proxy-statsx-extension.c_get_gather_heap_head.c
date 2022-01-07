
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* cur; int value64; int last; } ;


 TYPE_1__** GH ;
 scalar_t__ GH_N ;
 int fprintf (int ,char*,int ,int ) ;
 int stderr ;
 int verbosity ;

__attribute__((used)) static int *get_gather_heap_head (void) {
 if (verbosity >= 4) {
  fprintf (stderr, "get_gather_heap_head: GH->last = %p (value64 = %016llx)\n", GH[1]->last, GH[1]->value64);
 }
  return GH_N ? GH[1]->cur : 0;
}
