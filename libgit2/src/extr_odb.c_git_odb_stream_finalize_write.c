
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_7__ {scalar_t__ received_bytes; scalar_t__ declared_size; int (* finalize_write ) (TYPE_2__*,int *) ;TYPE_1__* backend; int hash_ctx; } ;
typedef TYPE_2__ git_odb_stream ;
struct TYPE_6__ {int odb; } ;


 int git_hash_final (int *,int ) ;
 scalar_t__ git_odb__freshen (int ,int *) ;
 int git_odb_stream__invalid_length (TYPE_2__*,char*) ;
 int stub1 (TYPE_2__*,int *) ;

int git_odb_stream_finalize_write(git_oid *out, git_odb_stream *stream)
{
 if (stream->received_bytes != stream->declared_size)
  return git_odb_stream__invalid_length(stream,
   "stream_finalize_write()");

 git_hash_final(out, stream->hash_ctx);

 if (git_odb__freshen(stream->backend->odb, out))
  return 0;

 return stream->finalize_write(stream, out);
}
