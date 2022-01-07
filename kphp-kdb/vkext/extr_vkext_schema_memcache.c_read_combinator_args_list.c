
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_combinator {int args_num; char* id; scalar_t__ var_num; int args; } ;


 int ADD_PMALLOC (int) ;
 int fprintf (int ,char*,char*,int) ;
 int read_args_list (int ,int,scalar_t__*) ;
 int stderr ;
 int tl_parse_int () ;
 int verbosity ;
 int zzmalloc0 (int) ;

int read_combinator_args_list (struct tl_combinator *c) {
  c->args_num = tl_parse_int ();
  if (verbosity >= 2) {
    fprintf (stderr, "c->id = %s, c->args_num = %d\n", c->id, c->args_num);
  }
  if (c->args_num < 0 || c->args_num > 1000) {
    return -1;
  }
  c->args = zzmalloc0 (sizeof (void *) * c->args_num);
  c->var_num = 0;
  ADD_PMALLOC (sizeof (void *) * c->args_num);
  return read_args_list (c->args, c->args_num, &c->var_num);
}
