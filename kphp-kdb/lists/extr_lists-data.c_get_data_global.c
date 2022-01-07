
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* DA; size_t* IA; } ;
typedef TYPE_1__ listree_global_t ;



__attribute__((used)) static inline int get_data_global (listree_global_t *LG, int index) {
  return LG->DA[LG->IA[index]];
}
