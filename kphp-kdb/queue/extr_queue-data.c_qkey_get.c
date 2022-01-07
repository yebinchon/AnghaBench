
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char* x; TYPE_2__* y; } ;
typedef TYPE_1__ shmap_pair_string_vptr ;
struct TYPE_10__ {char* name; } ;
typedef TYPE_2__ qkey ;


 int assert (int) ;
 scalar_t__ dl_get_memory_used () ;
 char* dl_strdup (char*) ;
 int fprintf (int ,char*,char*) ;
 int h_qkey ;
 TYPE_2__* qkey_malloc () ;
 TYPE_1__* shmap_string_vptr_add (int *,TYPE_1__) ;
 TYPE_1__* shmap_string_vptr_get (int *,TYPE_1__) ;
 int stderr ;
 int str_memory ;
 int verbosity ;

qkey *qkey_get (char *name, int force) {
  shmap_pair_string_vptr a, *b;
  a.y = ((void*)0);
  a.x = name;

  qkey *k = ((void*)0);
  if (force) {
    b = shmap_string_vptr_add (&h_qkey, a);
    if (b->y == ((void*)0)) {
      str_memory -= dl_get_memory_used();
      b->x = dl_strdup (b->x);
      str_memory += dl_get_memory_used();

      k = b->y = qkey_malloc();
      k->name = b->x;
    } else if (force == 1) {
      assert ("Keys collision" && 0);
    } else {
      k = b->y;
    }

    if (verbosity > 2) {
      fprintf (stderr, "Key created : [%s]\n", name);
    }

  } else {


    b = shmap_string_vptr_get (&h_qkey, a);
    if (b != ((void*)0)) {
      k = b->y;
    }
  }

  return k;
}
