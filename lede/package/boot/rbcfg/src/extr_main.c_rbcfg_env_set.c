
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbcfg_env {int type; } ;



 int rbcfg_env_set_u32 (struct rbcfg_env const*,char const*) ;

__attribute__((used)) static int
rbcfg_env_set(const struct rbcfg_env *env, const char *data)
{
 int ret = 0;

 switch (env->type) {
 case 128:
  ret = rbcfg_env_set_u32(env, data);
  break;
 }

 return ret;
}
