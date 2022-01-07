
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RProc {int dummy; } ;
typedef int mrb_state ;
typedef int h2o_mruby_config_vars_t ;


 struct RProc* h2o_mruby_compile_code (int *,int *,char*) ;

__attribute__((used)) static int compile_test(mrb_state *mrb, h2o_mruby_config_vars_t *config, char *errbuf)
{
    struct RProc *result = h2o_mruby_compile_code(mrb, config, errbuf);
    return result != ((void*)0);
}
