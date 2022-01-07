
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int git_vector ;
struct TYPE_20__ {int oid; int name; } ;
typedef TYPE_2__ git_remote_head ;
struct TYPE_21__ {scalar_t__ (* update_tips ) (int ,TYPE_5__*,int *,int ) ;int payload; } ;
typedef TYPE_3__ git_remote_callbacks ;
struct TYPE_22__ {int repo; } ;
typedef TYPE_4__ git_remote ;
typedef int git_refspec ;
typedef int git_reference ;
struct TYPE_19__ {int member_0; } ;
struct TYPE_23__ {TYPE_1__ member_0; } ;
typedef TYPE_5__ git_oid ;
struct TYPE_24__ {int ptr; } ;
typedef TYPE_6__ git_buf ;


 TYPE_6__ GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int GIT_ITEROVER ;
 int git_buf_clear (TYPE_6__*) ;
 int git_buf_dispose (TYPE_6__*) ;
 int git_oid_cmp (TYPE_5__*,int *) ;
 int git_reference_create (int **,int ,int ,int *,int,char const*) ;
 int git_reference_create_matching (int **,int ,int ,int *,int,TYPE_5__*,char const*) ;
 int git_reference_free (int *) ;
 int git_reference_name_to_id (TYPE_5__*,int ,int ) ;
 int git_refspec_transform (TYPE_6__*,int *,int ) ;
 int next_head (TYPE_4__ const*,int *,int **,TYPE_2__**,size_t*,size_t*,size_t*) ;
 scalar_t__ stub1 (int ,TYPE_5__*,int *,int ) ;

__attribute__((used)) static int opportunistic_updates(const git_remote *remote, const git_remote_callbacks *callbacks,
     git_vector *refs, const char *msg)
{
 size_t i, j, k;
 git_refspec *spec;
 git_remote_head *head;
 git_reference *ref;
 git_buf refname = GIT_BUF_INIT;
 int error = 0;

 i = j = k = 0;

 while ((error = next_head(remote, refs, &spec, &head, &i, &j, &k)) == 0) {
  git_oid old = {{ 0 }};
  git_buf_clear(&refname);
  if ((error = git_refspec_transform(&refname, spec, head->name)) < 0)
   goto cleanup;

  error = git_reference_name_to_id(&old, remote->repo, refname.ptr);
  if (error < 0 && error != GIT_ENOTFOUND)
   goto cleanup;

  if (!git_oid_cmp(&old, &head->oid))
   continue;


  if (error)
   error = git_reference_create(&ref, remote->repo, refname.ptr, &head->oid, 1, msg);
  else
   error = git_reference_create_matching(&ref, remote->repo, refname.ptr, &head->oid, 1, &old, msg);
  git_reference_free(ref);
  if (error < 0)
   goto cleanup;

  if (callbacks && callbacks->update_tips != ((void*)0)) {
   if (callbacks->update_tips(refname.ptr, &old, &head->oid, callbacks->payload) < 0)
    goto cleanup;
  }
 }

 if (error == GIT_ITEROVER)
  error = 0;

cleanup:
 git_buf_dispose(&refname);
 return error;
}
