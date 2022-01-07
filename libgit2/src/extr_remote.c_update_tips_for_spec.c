
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;


struct TYPE_31__ {unsigned int length; } ;
typedef TYPE_1__ git_vector ;
struct TYPE_32__ {int oid; int name; } ;
typedef TYPE_2__ git_remote_head ;
struct TYPE_33__ {scalar_t__ (* update_tips ) (int ,int *,int *,int ) ;int payload; } ;
typedef TYPE_3__ git_remote_callbacks ;
typedef scalar_t__ git_remote_autotag_option_t ;
struct TYPE_34__ {int repo; } ;
typedef TYPE_4__ git_remote ;
struct TYPE_35__ {scalar_t__ dst; } ;
typedef TYPE_5__ git_refspec ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_odb ;
struct TYPE_36__ {int ptr; } ;
typedef TYPE_6__ git_buf ;


 TYPE_6__ GIT_BUF_INIT ;
 int GIT_EEXISTS ;
 int GIT_ENOTFOUND ;
 int GIT_OID_RAWSZ ;
 int GIT_REFSPEC_TAGS ;
 scalar_t__ GIT_REMOTE_DOWNLOAD_TAGS_AUTO ;
 scalar_t__ GIT_REMOTE_DOWNLOAD_TAGS_NONE ;
 int assert (TYPE_4__*) ;
 int git_buf_clear (TYPE_6__*) ;
 int git_buf_dispose (TYPE_6__*) ;
 scalar_t__ git_buf_len (TYPE_6__*) ;
 scalar_t__ git_buf_puts (TYPE_6__*,int ) ;
 int git_odb_exists (int *,int *) ;
 int git_oid__cmp (int *,int *) ;
 int git_reference_create (int **,int ,int ,int *,int,char const*) ;
 int git_reference_free (int *) ;
 int git_reference_is_valid_name (int ) ;
 int git_reference_name_to_id (int *,int ,int ) ;
 int git_refspec__dispose (TYPE_5__*) ;
 scalar_t__ git_refspec__parse (TYPE_5__*,int ,int) ;
 scalar_t__ git_refspec_src_matches (TYPE_5__*,int ) ;
 scalar_t__ git_refspec_transform (TYPE_6__*,TYPE_5__*,int ) ;
 int git_remote_write_fetchhead (TYPE_4__*,TYPE_5__*,TYPE_1__*) ;
 scalar_t__ git_repository_odb__weakptr (int **,int ) ;
 int git_vector_free (TYPE_1__*) ;
 TYPE_2__* git_vector_get (TYPE_1__*,unsigned int) ;
 scalar_t__ git_vector_init (TYPE_1__*,int,int *) ;
 int git_vector_insert (TYPE_1__*,TYPE_2__*) ;
 int memset (int *,int ,int ) ;
 scalar_t__ stub1 (int ,int *,int *,int ) ;

__attribute__((used)) static int update_tips_for_spec(
  git_remote *remote,
  const git_remote_callbacks *callbacks,
  int update_fetchhead,
  git_remote_autotag_option_t tagopt,
  git_refspec *spec,
  git_vector *refs,
  const char *log_message)
{
 int error = 0, autotag;
 unsigned int i = 0;
 git_buf refname = GIT_BUF_INIT;
 git_oid old;
 git_odb *odb;
 git_remote_head *head;
 git_reference *ref;
 git_refspec tagspec;
 git_vector update_heads;

 assert(remote);

 if (git_repository_odb__weakptr(&odb, remote->repo) < 0)
  return -1;

 if (git_refspec__parse(&tagspec, GIT_REFSPEC_TAGS, 1) < 0)
  return -1;


 if (git_vector_init(&update_heads, 16, ((void*)0)) < 0)
  return -1;

 for (; i < refs->length; ++i) {
  head = git_vector_get(refs, i);
  autotag = 0;
  git_buf_clear(&refname);


  if (!git_reference_is_valid_name(head->name))
   continue;


  if (git_refspec_src_matches(&tagspec, head->name)) {
   if (tagopt != GIT_REMOTE_DOWNLOAD_TAGS_NONE) {

    if (tagopt == GIT_REMOTE_DOWNLOAD_TAGS_AUTO)
     autotag = 1;

    git_buf_clear(&refname);
    if (git_buf_puts(&refname, head->name) < 0)
     goto on_error;
   }
  }


  if (!autotag && git_refspec_src_matches(spec, head->name)) {
   if (spec->dst) {
    if (git_refspec_transform(&refname, spec, head->name) < 0)
     goto on_error;
   } else {




    if ((error = git_vector_insert(&update_heads, head)) < 0)
     goto on_error;

    continue;
   }
  }


  if (git_buf_len(&refname) == 0) {
   continue;
  }


  if (autotag && !git_odb_exists(odb, &head->oid))
   continue;

  if (!autotag && git_vector_insert(&update_heads, head) < 0)
   goto on_error;

  error = git_reference_name_to_id(&old, remote->repo, refname.ptr);
  if (error < 0 && error != GIT_ENOTFOUND)
   goto on_error;

  if (error == GIT_ENOTFOUND) {
   memset(&old, 0, GIT_OID_RAWSZ);

   if (autotag && git_vector_insert(&update_heads, head) < 0)
    goto on_error;
  }

  if (!git_oid__cmp(&old, &head->oid))
   continue;


  error = git_reference_create(&ref, remote->repo, refname.ptr, &head->oid, !autotag,
    log_message);

  if (error == GIT_EEXISTS)
   continue;

  if (error < 0)
   goto on_error;

  git_reference_free(ref);

  if (callbacks && callbacks->update_tips != ((void*)0)) {
   if (callbacks->update_tips(refname.ptr, &old, &head->oid, callbacks->payload) < 0)
    goto on_error;
  }
 }

 if (update_fetchhead &&
     (error = git_remote_write_fetchhead(remote, spec, &update_heads)) < 0)
  goto on_error;

 git_vector_free(&update_heads);
 git_refspec__dispose(&tagspec);
 git_buf_dispose(&refname);
 return 0;

on_error:
 git_vector_free(&update_heads);
 git_refspec__dispose(&tagspec);
 git_buf_dispose(&refname);
 return -1;

}
