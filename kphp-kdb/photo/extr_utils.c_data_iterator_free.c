
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int new_ids_n; int new_local_ids; int new_ids; } ;
typedef TYPE_1__ data_iterator ;


 int dl_free (int ,int) ;
 int memset (TYPE_1__*,int ,int) ;

void data_iterator_free (data_iterator *it) {
  dl_free (it->new_ids, sizeof (int) * it->new_ids_n);
  dl_free (it->new_local_ids, sizeof (int) * it->new_ids_n);
  memset (it, 0, sizeof (*it));
}
