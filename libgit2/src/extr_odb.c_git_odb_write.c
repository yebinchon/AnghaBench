
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_15__ {int (* finalize_write ) (TYPE_1__*,int *) ;int (* write ) (TYPE_1__*,void const*,size_t) ;} ;
typedef TYPE_1__ git_odb_stream ;
struct TYPE_16__ {int (* write ) (TYPE_2__*,int *,void const*,size_t,int ) ;} ;
typedef TYPE_2__ git_odb_backend ;
struct TYPE_19__ {size_t length; } ;
struct TYPE_17__ {TYPE_9__ backends; } ;
typedef TYPE_3__ git_odb ;
typedef int git_object_t ;
struct TYPE_18__ {scalar_t__ is_alternate; TYPE_2__* backend; } ;
typedef TYPE_4__ backend_internal ;


 int GIT_EINVALID ;
 int GIT_ERROR ;
 int GIT_PASSTHROUGH ;
 int assert (int) ;
 int error_null_oid (int ,char*) ;
 scalar_t__ git_odb__freshen (TYPE_3__*,int *) ;
 int git_odb_hash (int *,void const*,size_t,int ) ;
 int git_odb_open_wstream (TYPE_1__**,TYPE_3__*,size_t,int ) ;
 int git_odb_stream_free (TYPE_1__*) ;
 scalar_t__ git_oid_is_zero (int *) ;
 TYPE_4__* git_vector_get (TYPE_9__*,size_t) ;
 int stub1 (TYPE_2__*,int *,void const*,size_t,int ) ;
 int stub2 (TYPE_1__*,void const*,size_t) ;
 int stub3 (TYPE_1__*,int *) ;

int git_odb_write(
 git_oid *oid, git_odb *db, const void *data, size_t len, git_object_t type)
{
 size_t i;
 int error = GIT_ERROR;
 git_odb_stream *stream;

 assert(oid && db);

 git_odb_hash(oid, data, len, type);

 if (git_oid_is_zero(oid))
  return error_null_oid(GIT_EINVALID, "cannot write object");

 if (git_odb__freshen(db, oid))
  return 0;

 for (i = 0; i < db->backends.length && error < 0; ++i) {
  backend_internal *internal = git_vector_get(&db->backends, i);
  git_odb_backend *b = internal->backend;


  if (internal->is_alternate)
   continue;

  if (b->write != ((void*)0))
   error = b->write(b, oid, data, len, type);
 }

 if (!error || error == GIT_PASSTHROUGH)
  return 0;





 if ((error = git_odb_open_wstream(&stream, db, len, type)) != 0)
  return error;

 stream->write(stream, data, len);
 error = stream->finalize_write(stream, oid);
 git_odb_stream_free(stream);

 return error;
}
