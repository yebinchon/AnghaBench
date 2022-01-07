
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_tree {int dummy; } ;




 int fprintf (int ,char*,int) ;
 struct tl_tree* read_num_const (int*) ;
 struct tl_tree* read_num_var (int*) ;
 int stderr ;
 int tl_parse_int () ;
 int verbosity ;

struct tl_tree *read_nat_expr (int *var_num) {
  int x = tl_parse_int ();
  if (verbosity >= 2) {
    fprintf (stderr, "read_nat_expr: constructor = 0x%08x\n", x);
  }
  switch (x) {
  case 129:
    return read_num_const (var_num);
  case 128:
    return read_num_var (var_num);
  default:
    if (verbosity) {
      fprintf (stderr, "x = %d\n", x);
    }
    return 0;
  }
}
