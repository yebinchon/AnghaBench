
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mrb_context {TYPE_1__* ci; } ;
struct REnv {int dummy; } ;
struct TYPE_6__ {struct mrb_context* c; } ;
typedef TYPE_2__ mrb_state ;
struct TYPE_5__ {struct REnv* env; } ;


 int mrb_env_unshare (TYPE_2__*,struct REnv*) ;

__attribute__((used)) static inline void
cipop(mrb_state *mrb)
{
  struct mrb_context *c = mrb->c;
  struct REnv *env = c->ci->env;

  c->ci--;
  if (env) mrb_env_unshare(mrb, env);
}
