
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; size_t start; int length; } ;
typedef TYPE_1__ icpl_token_t ;
typedef int icpl_cell_t ;


 int assert (int ) ;
 int * cell_new_any () ;
 int * cell_new_combinator (char const*,int ) ;
 int * cell_new_nat (char const*,int ) ;
 int * cell_new_node (int *,int *) ;
 int * cell_new_variable (char const) ;
 int fprintf (int ,char*,int,int) ;
 int icpl_failf (char const*,size_t,char*) ;






 int stderr ;

__attribute__((used)) static int parse_expr (const char *input, icpl_token_t *a, int tokens, icpl_cell_t **R) {
  int i, j, s;
  icpl_cell_t *c, *r = ((void*)0);
  *R = ((void*)0);
  for (i = 0; i < tokens; i++) {
     switch (a[i].type) {
       case 129:
         s = 1;
         for (j = i + 1; s > 0 && j < tokens; j++) {
           switch (a[j].type) {
             case 129: s++; break;
             case 132: s--; break;
             default: break;
           }
         }
         if (s > 0) {
           return icpl_failf (input, a[i].start, "closing bracket wasn't found");
         }


         if (parse_expr (input, a + (i + 1), j - (i + 2), &c) < 0) {
           return -1;
         }
         r = cell_new_node (r, c);
         i = j;
       break;
       case 132: return icpl_failf (input, a[i].start, "unexpected closing bracket");
       case 131: r = cell_new_node (r, cell_new_combinator (input + a[i].start, a[i].length)); break;
       case 130: r = cell_new_node (r, cell_new_nat (input + a[i].start, a[i].length)); break;
       case 128: r = cell_new_node (r, cell_new_variable (input[a[i].start])); break;
       case 133: r = cell_new_node (r, cell_new_any ()); break;
       default: fprintf (stderr, "Unexpected lt (%d) at pos %d\n", a[i].type, i); assert (0);
     }
  }
  *R = r;
  return 0;
}
