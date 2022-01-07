
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_id {int dummy; } ;


 int expand_ref (struct repository*,char const*,int,struct object_id*,char**) ;
 int free (char*) ;
 char* substitute_branch_name (struct repository*,char const**,int*) ;

int repo_dwim_ref(struct repository *r, const char *str, int len,
    struct object_id *oid, char **ref)
{
 char *last_branch = substitute_branch_name(r, &str, &len);
 int refs_found = expand_ref(r, str, len, oid, ref);
 free(last_branch);
 return refs_found;
}
