
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int repo_dwim_log (int ,char const*,int,struct object_id*,char**) ;
 int the_repository ;

int dwim_log(const char *str, int len, struct object_id *oid, char **log)
{
 return repo_dwim_log(the_repository, str, len, oid, log);
}
