
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ecma_finalize_builtins () ;
 int ecma_finalize_global_lex_env () ;
 int ecma_finalize_lit_storage () ;
 int ecma_gc_run () ;

void
ecma_finalize (void)
{
  ecma_finalize_global_lex_env ();
  ecma_finalize_builtins ();
  ecma_gc_run ();
  ecma_finalize_lit_storage ();
}
