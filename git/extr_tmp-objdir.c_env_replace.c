
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_array {int dummy; } ;


 int argv_array_pushf (struct argv_array*,char*,char const*,char const*) ;

__attribute__((used)) static void env_replace(struct argv_array *env, const char *key, const char *val)
{
 argv_array_pushf(env, "%s=%s", key, val);
}
