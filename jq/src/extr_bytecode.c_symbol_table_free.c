
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol_table {int cfunc_names; struct symbol_table* cfunctions; } ;


 int jv_free (int ) ;
 int jv_mem_free (struct symbol_table*) ;

__attribute__((used)) static void symbol_table_free(struct symbol_table* syms) {
  jv_mem_free(syms->cfunctions);
  jv_free(syms->cfunc_names);
  jv_mem_free(syms);
}
