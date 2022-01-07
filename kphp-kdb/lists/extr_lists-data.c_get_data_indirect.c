
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int object_id_t ;
struct TYPE_3__ {int * IA; int DA; } ;
typedef TYPE_1__ listree_t ;


 int OARR_ENTRY (int ,int ) ;

__attribute__((used)) static inline object_id_t get_data_indirect (listree_t *LI, int index) {
  return OARR_ENTRY (LI->DA, LI->IA[index]);
}
