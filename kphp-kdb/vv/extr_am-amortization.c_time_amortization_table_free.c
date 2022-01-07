
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ refcnt; } ;
typedef TYPE_1__ time_amortization_table_t ;


 int assert (int) ;
 int tot_amortization_tables ;
 int zfree (TYPE_1__*,int) ;

void time_amortization_table_free (time_amortization_table_t **p) {
  if (p == ((void*)0)) {
    return;
  }
  if (*p == ((void*)0)) {
    return;
  }
  (*p)->refcnt--;
  assert ((*p)->refcnt >= 0);
  if (!(*p)->refcnt) {
    zfree (*p, sizeof (time_amortization_table_t));
    tot_amortization_tables--;
  }
  *p = ((void*)0);
}
