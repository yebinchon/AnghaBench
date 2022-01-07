
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_odb_backend ;
typedef int git_object_t ;
struct TYPE_5__ {int content; int oid; } ;
typedef TYPE_1__ fake_object ;
struct TYPE_6__ {int read_prefix_calls; } ;
typedef TYPE_2__ fake_backend ;


 int GIT_OBJECT_BLOB ;
 void* git__strdup (int ) ;
 int git_oid_fromstr (int *,int ) ;
 int search_object (TYPE_1__ const**,TYPE_2__*,int const*,size_t) ;
 size_t strlen (int ) ;

__attribute__((used)) static int fake_backend__read_prefix(
 git_oid *out_oid, void **buffer_p, size_t *len_p, git_object_t *type_p,
 git_odb_backend *backend, const git_oid *short_oid, size_t len)
{
 const fake_object *obj;
 fake_backend *fake;
 int error;

 fake = (fake_backend *)backend;

 fake->read_prefix_calls++;

 if ((error = search_object(&obj, fake, short_oid, len)) < 0)
  return error;

 git_oid_fromstr(out_oid, obj->oid);
 *len_p = strlen(obj->content);
 *buffer_p = git__strdup(obj->content);
 *type_p = GIT_OBJECT_BLOB;

 return 0;
}
