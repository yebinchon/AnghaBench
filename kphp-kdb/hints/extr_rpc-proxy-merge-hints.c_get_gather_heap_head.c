
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gh_entry_t ;


 int ** GH ;
 scalar_t__ GH_N ;

__attribute__((used)) static gh_entry_t *get_gather_heap_head (void) {
  return GH_N ? GH[1] : ((void*)0);
}
