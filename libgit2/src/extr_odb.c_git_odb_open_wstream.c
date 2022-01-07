
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int git_off_t ;
struct TYPE_14__ {scalar_t__ received_bytes; int declared_size; int * hash_ctx; } ;
typedef TYPE_1__ git_odb_stream ;
struct TYPE_15__ {int (* writestream ) (TYPE_1__**,TYPE_2__*,int ,int ) ;int * write; } ;
typedef TYPE_2__ git_odb_backend ;
struct TYPE_13__ {size_t length; } ;
struct TYPE_16__ {TYPE_10__ backends; } ;
typedef TYPE_3__ git_odb ;
typedef int git_object_t ;
typedef int git_hash_ctx ;
struct TYPE_17__ {scalar_t__ is_alternate; TYPE_2__* backend; } ;
typedef TYPE_4__ backend_internal ;


 int GIT_ERROR ;
 int GIT_ERROR_CHECK_ALLOC (int *) ;
 int GIT_PASSTHROUGH ;
 int assert (int) ;
 int git__free (int *) ;
 int * git__malloc (int) ;
 int git_hash_ctx_init (int *) ;
 int git_odb__error_unsupported_in_backend (char*) ;
 TYPE_4__* git_vector_get (TYPE_10__*,size_t) ;
 int hash_header (int *,int ,int ) ;
 int init_fake_wstream (TYPE_1__**,TYPE_2__*,int ,int ) ;
 int stub1 (TYPE_1__**,TYPE_2__*,int ,int ) ;

int git_odb_open_wstream(
 git_odb_stream **stream, git_odb *db, git_off_t size, git_object_t type)
{
 size_t i, writes = 0;
 int error = GIT_ERROR;
 git_hash_ctx *ctx = ((void*)0);

 assert(stream && db);

 for (i = 0; i < db->backends.length && error < 0; ++i) {
  backend_internal *internal = git_vector_get(&db->backends, i);
  git_odb_backend *b = internal->backend;


  if (internal->is_alternate)
   continue;

  if (b->writestream != ((void*)0)) {
   ++writes;
   error = b->writestream(stream, b, size, type);
  } else if (b->write != ((void*)0)) {
   ++writes;
   error = init_fake_wstream(stream, b, size, type);
  }
 }

 if (error < 0) {
  if (error == GIT_PASSTHROUGH)
   error = 0;
  else if (!writes)
   error = git_odb__error_unsupported_in_backend("write object");

  goto done;
 }

 ctx = git__malloc(sizeof(git_hash_ctx));
 GIT_ERROR_CHECK_ALLOC(ctx);

 if ((error = git_hash_ctx_init(ctx)) < 0 ||
  (error = hash_header(ctx, size, type)) < 0)
  goto done;

 (*stream)->hash_ctx = ctx;
 (*stream)->declared_size = size;
 (*stream)->received_bytes = 0;

done:
 if (error)
  git__free(ctx);
 return error;
}
