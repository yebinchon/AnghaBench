
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_odb_backend ;
typedef int fake_object ;
struct TYPE_5__ {int * free; int exists_prefix; int exists; int read_header; int read_prefix; int read; int * refresh; int version; } ;
struct TYPE_6__ {TYPE_1__ parent; int const* objects; } ;
typedef TYPE_2__ fake_backend ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_2__*) ;
 int GIT_ODB_BACKEND_VERSION ;
 int fake_backend__exists ;
 int fake_backend__exists_prefix ;
 int fake_backend__free ;
 int fake_backend__read ;
 int fake_backend__read_header ;
 int fake_backend__read_prefix ;
 TYPE_2__* git__calloc (int,int) ;

int build_fake_backend(
 git_odb_backend **out,
 const fake_object *objects)
{
 fake_backend *backend;

 backend = git__calloc(1, sizeof(fake_backend));
 GIT_ERROR_CHECK_ALLOC(backend);

 backend->parent.version = GIT_ODB_BACKEND_VERSION;

 backend->parent.refresh = ((void*)0);
 backend->objects = objects;

 backend->parent.read = fake_backend__read;
 backend->parent.read_prefix = fake_backend__read_prefix;
 backend->parent.read_header = fake_backend__read_header;
 backend->parent.exists = fake_backend__exists;
 backend->parent.exists_prefix = fake_backend__exists_prefix;
 backend->parent.free = &fake_backend__free;

 *out = (git_odb_backend *)backend;

 return 0;
}
