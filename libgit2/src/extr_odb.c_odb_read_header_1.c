
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_8__ {int (* read_header ) (size_t*,int *,TYPE_1__*,int const*) ;int refresh; } ;
typedef TYPE_1__ git_odb_backend ;
struct TYPE_11__ {size_t length; } ;
struct TYPE_9__ {TYPE_7__ backends; } ;
typedef TYPE_2__ git_odb ;
typedef int git_object_t ;
struct TYPE_10__ {TYPE_1__* backend; } ;
typedef TYPE_3__ backend_internal ;



 int GIT_OBJECT_INVALID ;

 TYPE_3__* git_vector_get (TYPE_7__*,size_t) ;
 int odb_hardcoded_type (int const*) ;
 int stub1 (size_t*,int *,TYPE_1__*,int const*) ;

__attribute__((used)) static int odb_read_header_1(
 size_t *len_p, git_object_t *type_p, git_odb *db,
 const git_oid *id, bool only_refreshed)
{
 size_t i;
 git_object_t ht;
 bool passthrough = 0;
 int error;

 if (!only_refreshed && (ht = odb_hardcoded_type(id)) != GIT_OBJECT_INVALID) {
  *type_p = ht;
  *len_p = 0;
  return 0;
 }

 for (i = 0; i < db->backends.length; ++i) {
  backend_internal *internal = git_vector_get(&db->backends, i);
  git_odb_backend *b = internal->backend;

  if (only_refreshed && !b->refresh)
   continue;

  if (!b->read_header) {
   passthrough = 1;
   continue;
  }

  error = b->read_header(len_p, type_p, b, id);

  switch (error) {
  case 128:
   passthrough = 1;
   break;
  case 129:
   break;
  default:
   return error;
  }
 }

 return passthrough ? 128 : 129;
}
