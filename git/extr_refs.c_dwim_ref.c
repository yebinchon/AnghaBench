
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int repo_dwim_ref (int ,char const*,int,struct object_id*,char**) ;
 int the_repository ;

int dwim_ref(const char *str, int len, struct object_id *oid, char **ref)
{
 return repo_dwim_ref(the_repository, str, len, oid, ref);
}
