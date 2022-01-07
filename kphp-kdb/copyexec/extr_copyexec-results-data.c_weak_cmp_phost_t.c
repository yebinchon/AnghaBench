
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ volume_id; int hostname; } ;
typedef TYPE_1__ host_t ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int weak_cmp_phost_t (const host_t *a, const host_t *b) {
  if (a->volume_id < b->volume_id) {
    return -1;
  }
  if (a->volume_id > b->volume_id) {
    return 1;
  }
  return strcmp (a->hostname, b->hostname);
}
