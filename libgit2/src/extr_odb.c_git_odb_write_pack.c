
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct git_odb_writepack {int dummy; } ;
struct TYPE_9__ {int (* writepack ) (struct git_odb_writepack**,TYPE_1__*,TYPE_2__*,int ,void*) ;} ;
typedef TYPE_1__ git_odb_backend ;
struct TYPE_12__ {size_t length; } ;
struct TYPE_10__ {TYPE_7__ backends; } ;
typedef TYPE_2__ git_odb ;
typedef int git_indexer_progress_cb ;
struct TYPE_11__ {scalar_t__ is_alternate; TYPE_1__* backend; } ;
typedef TYPE_3__ backend_internal ;


 int GIT_ERROR ;
 int GIT_PASSTHROUGH ;
 int assert (int) ;
 int git_odb__error_unsupported_in_backend (char*) ;
 TYPE_3__* git_vector_get (TYPE_7__*,size_t) ;
 int stub1 (struct git_odb_writepack**,TYPE_1__*,TYPE_2__*,int ,void*) ;

int git_odb_write_pack(struct git_odb_writepack **out, git_odb *db, git_indexer_progress_cb progress_cb, void *progress_payload)
{
 size_t i, writes = 0;
 int error = GIT_ERROR;

 assert(out && db);

 for (i = 0; i < db->backends.length && error < 0; ++i) {
  backend_internal *internal = git_vector_get(&db->backends, i);
  git_odb_backend *b = internal->backend;


  if (internal->is_alternate)
   continue;

  if (b->writepack != ((void*)0)) {
   ++writes;
   error = b->writepack(out, b, db, progress_cb, progress_payload);
  }
 }

 if (error == GIT_PASSTHROUGH)
  error = 0;
 if (error < 0 && !writes)
  error = git_odb__error_unsupported_in_backend("write pack");

 return error;
}
