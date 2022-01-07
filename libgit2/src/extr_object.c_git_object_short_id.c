
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_14__ {int member_0; } ;
struct TYPE_17__ {int* id; TYPE_1__ member_0; } ;
typedef TYPE_4__ git_oid ;
typedef int git_odb ;
struct TYPE_15__ {int id; } ;
struct TYPE_16__ {TYPE_2__ oid; } ;
struct TYPE_18__ {TYPE_3__ cached; } ;
typedef TYPE_5__ git_object ;
struct TYPE_19__ {int size; int ptr; } ;
typedef TYPE_6__ git_buf ;


 int GIT_ABBREV_DEFAULT ;
 int GIT_CONFIGMAP_ABBREV ;
 int GIT_EAMBIGUOUS ;
 int GIT_OID_HEXSZ ;
 int assert (int) ;
 int git_buf_grow (TYPE_6__*,int) ;
 int git_buf_sanitize (TYPE_6__*) ;
 int git_error_clear () ;
 int * git_object_owner (TYPE_5__ const*) ;
 int git_odb_exists_prefix (int *,int *,TYPE_4__*,int) ;
 int git_odb_free (int *) ;
 int git_oid_tostr (int ,int,TYPE_4__*) ;
 int git_repository__configmap_lookup (int*,int *,int ) ;
 int git_repository_odb (int **,int *) ;
 int memcpy (int**,int *,int) ;

int git_object_short_id(git_buf *out, const git_object *obj)
{
 git_repository *repo;
 int len = GIT_ABBREV_DEFAULT, error;
 git_oid id = {{0}};
 git_odb *odb;

 assert(out && obj);

 git_buf_sanitize(out);
 repo = git_object_owner(obj);

 if ((error = git_repository__configmap_lookup(&len, repo, GIT_CONFIGMAP_ABBREV)) < 0)
  return error;

 if ((error = git_repository_odb(&odb, repo)) < 0)
  return error;

 while (len < GIT_OID_HEXSZ) {

  memcpy(&id.id, &obj->cached.oid.id, (len + 1) / 2);
  if (len & 1)
   id.id[len / 2] &= 0xf0;

  error = git_odb_exists_prefix(((void*)0), odb, &id, len);
  if (error != GIT_EAMBIGUOUS)
   break;

  git_error_clear();
  len++;
 }

 if (!error && !(error = git_buf_grow(out, len + 1))) {
  git_oid_tostr(out->ptr, len + 1, &id);
  out->size = len;
 }

 git_odb_free(odb);

 return error;
}
