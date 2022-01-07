
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hts_data {TYPE_2__* extra; } ;
struct connection {int dummy; } ;
struct TYPE_5__ {int n; TYPE_1__** k; } ;
typedef TYPE_2__ qkey_group ;
struct TYPE_4__ {scalar_t__ lock; int * conn; scalar_t__ subscribed; } ;


 struct hts_data* HTS_DATA (struct connection*) ;
 int assert (int) ;
 int qkey_group_free (TYPE_2__*) ;

int hts_close (struct connection *c, int who) {
  struct hts_data *D = HTS_DATA(c);

  qkey_group *k = D->extra;

  if (k != ((void*)0)) {
    int i;
    for (i = 0; i < k->n; i++) {
      k->k[i]->lock--;
      k->k[i]->subscribed = 0;
      k->k[i]->conn = ((void*)0);
      assert (k->k[i]->lock >= 0);
    }
    qkey_group_free (k);
    D->extra = ((void*)0);
  }


  return 0;
}
