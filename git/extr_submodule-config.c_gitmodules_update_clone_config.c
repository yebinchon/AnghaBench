
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parse_submodule_fetchjobs (char const*,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int gitmodules_update_clone_config(const char *var, const char *value,
       void *cb)
{
 int *max_jobs = cb;
 if (!strcmp(var, "submodule.fetchjobs"))
  *max_jobs = parse_submodule_fetchjobs(var, value);
 return 0;
}
