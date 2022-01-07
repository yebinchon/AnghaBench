
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat_failure {scalar_t__ size; int * prog; int prog_id; int total; } ;
struct forth_request {scalar_t__ size; int * prog; int prog_id; } ;


 int free (int *) ;

__attribute__((used)) static void stat_failure_incr (struct stat_failure *S, struct forth_request *E) {
  S->total++;
  S->prog_id = E->prog_id;
  if (S->prog) {
    free (S->prog);
  }
  S->prog = E->prog;
  S->size = E->size;
  E->prog = ((void*)0);
  E->size = 0;
}
