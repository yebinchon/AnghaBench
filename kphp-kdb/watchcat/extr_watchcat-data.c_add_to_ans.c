
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int root; } ;
struct TYPE_6__ {int id; TYPE_1__ keys; } ;
typedef TYPE_2__ watchcat ;


 int dfs (int ,int ) ;
 int fprintf (int ,char*,TYPE_2__*) ;
 int my_verbosity ;
 int stderr ;

void add_to_ans (watchcat *w) {
  if (my_verbosity > 2) {
    fprintf (stderr, "add to ans %p\n", w);
  }
  dfs (w->keys.root, w->id);
}
