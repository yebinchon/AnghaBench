
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct tl_tree {int dummy; } ;
struct tl_combinator {char* id; int IP; int var_num; } ;


 int TLUNI_NEXT ;
 void* TLUNI_START (int ,void**,int **,struct tl_tree**) ;
 int fprintf (int ,char*,char*) ;
 int ** get_field (int *,char*,int ) ;
 struct tl_tree** get_var_space (struct tl_tree**,int ) ;
 char* parse_zend_string (int **,int*) ;
 int stderr ;
 struct tl_combinator* tl_fun_get_by_id (char*) ;

void *tlcomb_store_any_function (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  zval **r = get_field (*arr, "_", 0);
  if (!r) { return 0;}
  int l;
  char *s = parse_zend_string (r, &l);
  struct tl_combinator *c = tl_fun_get_by_id (s);



  if (!c) { return 0; }
  struct tl_tree **new_vars = get_var_space (vars, c->var_num);
  if (!new_vars) {
    return 0;
  }
  void *res = TLUNI_START (c->IP, Data, arr, new_vars);
  if (!res) { return 0; }
  *(Data ++) = res;
  TLUNI_NEXT;
}
