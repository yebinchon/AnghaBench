
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* iterator_t ;
struct TYPE_4__ {int pos; int (* jump_to ) (TYPE_1__*,int) ;} ;


 int INFTY ;
 int PROFILER (int) ;
 int Qq ;
 int R_tot ;
 TYPE_1__* build_iterator_from_query (int ,int) ;
 int fprintf (int ,char*) ;
 int postprocess_res () ;
 int stderr ;
 int store_res (int) ;
 int stub1 (TYPE_1__*,int) ;
 int verbosity ;

int perform_query_iterator (void) {
  if (verbosity > 1) {
    fprintf (stderr, "performing query via iterators\n");
  }

  PROFILER (6);

  iterator_t I = build_iterator_from_query (Qq, 1);

  PROFILER (7);

  int x = I->pos;
  while (x < INFTY) {
    store_res (x);
    x = I->jump_to (I, x + 1);
  }

  PROFILER (8);

  postprocess_res ();

  PROFILER (9);

  return R_tot;
}
