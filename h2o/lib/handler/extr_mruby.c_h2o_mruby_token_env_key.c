
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mrb_value ;
typedef int h2o_token_t ;
struct TYPE_3__ {int constants; } ;
typedef TYPE_1__ h2o_mruby_shared_context_t ;


 int H2O_MAX_TOKENS ;
 int const* h2o__tokens ;
 int mrb_ary_entry (int ,int) ;

mrb_value h2o_mruby_token_env_key(h2o_mruby_shared_context_t *shared, const h2o_token_t *token)
{
    return mrb_ary_entry(shared->constants, token - h2o__tokens + H2O_MAX_TOKENS);
}
