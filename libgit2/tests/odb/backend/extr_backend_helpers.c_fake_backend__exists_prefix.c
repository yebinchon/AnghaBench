
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_odb_backend ;
struct TYPE_5__ {int oid; } ;
typedef TYPE_1__ fake_object ;
struct TYPE_6__ {int exists_prefix_calls; } ;
typedef TYPE_2__ fake_backend ;


 int git_oid_fromstr (int *,int ) ;
 int search_object (TYPE_1__ const**,TYPE_2__*,int const*,size_t) ;

__attribute__((used)) static int fake_backend__exists_prefix(
 git_oid *out, git_odb_backend *backend, const git_oid *oid, size_t len)
{
 const fake_object *obj;
 fake_backend *fake;
 int error;

 fake = (fake_backend *)backend;

 fake->exists_prefix_calls++;

 if ((error = search_object(&obj, fake, oid, len)) < 0)
  return error;

 if (out)
  git_oid_fromstr(out, obj->oid);

 return 0;
}
