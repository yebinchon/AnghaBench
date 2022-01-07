
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ received_bytes; scalar_t__ declared_size; int (* write ) (TYPE_1__*,char const*,size_t) ;int hash_ctx; } ;
typedef TYPE_1__ git_odb_stream ;


 int git_hash_update (int ,char const*,size_t) ;
 int git_odb_stream__invalid_length (TYPE_1__*,char*) ;
 int stub1 (TYPE_1__*,char const*,size_t) ;

int git_odb_stream_write(git_odb_stream *stream, const char *buffer, size_t len)
{
 git_hash_update(stream->hash_ctx, buffer, len);

 stream->received_bytes += len;

 if (stream->received_bytes > stream->declared_size)
  return git_odb_stream__invalid_length(stream,
   "stream_write()");

 return stream->write(stream, buffer, len);
}
