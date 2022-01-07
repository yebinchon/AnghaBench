
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int tag ;
struct TYPE_13__ {scalar_t__ type; int message; int tag_name; int tagger; int target; } ;
typedef TYPE_2__ git_tag ;
typedef int git_repository ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_odb_stream ;
struct TYPE_12__ {scalar_t__ type; } ;
struct TYPE_14__ {TYPE_1__ cached; } ;
typedef TYPE_3__ git_odb_object ;
typedef int git_odb ;
struct TYPE_15__ {int ptr; } ;
typedef TYPE_4__ git_buf ;


 TYPE_4__ GIT_BUF_INIT ;
 int GIT_EEXISTS ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_TAG ;
 int GIT_OBJECT_TAG ;
 int assert (int) ;
 int git__free (int ) ;
 int git_buf_dispose (TYPE_4__*) ;
 int git_error_set (int ,char*) ;
 int git_odb_object_free (TYPE_3__*) ;
 int git_odb_open_wstream (int **,int *,int,int ) ;
 scalar_t__ git_odb_read (TYPE_3__**,int *,int *) ;
 int git_odb_stream_finalize_write (int *,int *) ;
 int git_odb_stream_free (int *) ;
 int git_odb_stream_write (int *,char const*,int) ;
 int git_reference_create (int **,int *,int ,int *,int,int *) ;
 int git_reference_free (int *) ;
 scalar_t__ git_repository_odb__weakptr (int **,int *) ;
 int git_signature_free (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int retrieve_tag_reference_oid (int *,TYPE_4__*,int *,int ) ;
 int strlen (char const*) ;
 scalar_t__ tag_parse (TYPE_2__*,char const*,char const*) ;

int git_tag_create_from_buffer(git_oid *oid, git_repository *repo, const char *buffer, int allow_ref_overwrite)
{
 git_tag tag;
 int error;
 git_odb *odb;
 git_odb_stream *stream;
 git_odb_object *target_obj;

 git_reference *new_ref = ((void*)0);
 git_buf ref_name = GIT_BUF_INIT;

 assert(oid && buffer);

 memset(&tag, 0, sizeof(tag));

 if (git_repository_odb__weakptr(&odb, repo) < 0)
  return -1;


 if (tag_parse(&tag, buffer, buffer + strlen(buffer)) < 0)
  return -1;


 if (git_odb_read(&target_obj, odb, &tag.target) < 0)
  goto on_error;

 if (tag.type != target_obj->cached.type) {
  git_error_set(GIT_ERROR_TAG, "the type for the given target is invalid");
  goto on_error;
 }

 error = retrieve_tag_reference_oid(oid, &ref_name, repo, tag.tag_name);
 if (error < 0 && error != GIT_ENOTFOUND)
  goto on_error;


 git_signature_free(tag.tagger);
 git__free(tag.tag_name);
 git__free(tag.message);
 git_odb_object_free(target_obj);



 if (error == 0 && !allow_ref_overwrite) {
  git_error_set(GIT_ERROR_TAG, "tag already exists");
  return GIT_EEXISTS;
 }


 if ((error = git_odb_open_wstream(
   &stream, odb, strlen(buffer), GIT_OBJECT_TAG)) < 0)
  return error;

 if (!(error = git_odb_stream_write(stream, buffer, strlen(buffer))))
  error = git_odb_stream_finalize_write(oid, stream);

 git_odb_stream_free(stream);

 if (error < 0) {
  git_buf_dispose(&ref_name);
  return error;
 }

 error = git_reference_create(
  &new_ref, repo, ref_name.ptr, oid, allow_ref_overwrite, ((void*)0));

 git_reference_free(new_ref);
 git_buf_dispose(&ref_name);

 return error;

on_error:
 git_signature_free(tag.tagger);
 git__free(tag.tag_name);
 git__free(tag.message);
 git_odb_object_free(target_obj);
 return -1;
}
