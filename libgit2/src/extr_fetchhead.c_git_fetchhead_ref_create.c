
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_6__ {unsigned int is_merge; void* remote_url; void* ref_name; int oid; } ;
typedef TYPE_1__ git_fetchhead_ref ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int assert (int) ;
 TYPE_1__* git__malloc (int) ;
 void* git__strdup (char const*) ;
 int git_oid_cpy (int *,int *) ;
 int memset (TYPE_1__*,int,int) ;

int git_fetchhead_ref_create(
 git_fetchhead_ref **out,
 git_oid *oid,
 unsigned int is_merge,
 const char *ref_name,
 const char *remote_url)
{
 git_fetchhead_ref *fetchhead_ref;

 assert(out && oid);

 *out = ((void*)0);

 fetchhead_ref = git__malloc(sizeof(git_fetchhead_ref));
 GIT_ERROR_CHECK_ALLOC(fetchhead_ref);

 memset(fetchhead_ref, 0x0, sizeof(git_fetchhead_ref));

 git_oid_cpy(&fetchhead_ref->oid, oid);
 fetchhead_ref->is_merge = is_merge;

 if (ref_name)
  fetchhead_ref->ref_name = git__strdup(ref_name);

 if (remote_url)
  fetchhead_ref->remote_url = git__strdup(remote_url);

 *out = fetchhead_ref;

 return 0;
}
