
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int d; int sums; int used; int code; } ;
typedef TYPE_1__ perfect_hash ;


 int dl_free (int ,int ) ;
 int get_code_len (int ) ;
 int get_sums_len (int ) ;
 int get_used_len (int ) ;
 int ph_init (TYPE_1__*) ;

void ph_free (perfect_hash *h) {
  dl_free (h->code, get_code_len (h->d));
  dl_free (h->used, get_used_len (h->d));
  dl_free (h->sums, get_sums_len (h->d));
  ph_init (h);
}
