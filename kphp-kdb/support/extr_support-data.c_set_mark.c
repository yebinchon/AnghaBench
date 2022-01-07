
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_support_set_mark {int user_id; int mark; } ;


 int change_mark (int,int) ;
 int fprintf (int ,char*,int,int) ;
 int stderr ;
 int verbosity ;

int set_mark (struct lev_support_set_mark *E) {
  if (verbosity > 1) {
    fprintf (stderr, "Setting mark for question %d to %d\n", E->user_id, E->mark);
  }

  return change_mark (E->user_id, E->mark);
}
