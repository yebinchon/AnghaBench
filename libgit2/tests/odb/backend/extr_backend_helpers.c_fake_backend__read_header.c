
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_odb_backend ;
typedef int git_object_t ;
struct TYPE_5__ {int content; } ;
typedef TYPE_1__ fake_object ;
struct TYPE_6__ {int read_header_calls; } ;
typedef TYPE_2__ fake_backend ;


 int GIT_OBJECT_BLOB ;
 int GIT_OID_HEXSZ ;
 int search_object (TYPE_1__ const**,TYPE_2__*,int const*,int ) ;
 size_t strlen (int ) ;

__attribute__((used)) static int fake_backend__read_header(
 size_t *len_p, git_object_t *type_p,
 git_odb_backend *backend, const git_oid *oid)
{
 const fake_object *obj;
 fake_backend *fake;
 int error;

 fake = (fake_backend *)backend;

 fake->read_header_calls++;

 if ((error = search_object(&obj, fake, oid, GIT_OID_HEXSZ)) < 0)
  return error;

 *len_p = strlen(obj->content);
 *type_p = GIT_OBJECT_BLOB;

 return 0;
}
