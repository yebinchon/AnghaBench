
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* free ) (TYPE_1__*) ;int hash_ctx; } ;
typedef TYPE_1__ git_odb_stream ;


 int git__free (int ) ;
 int git_hash_ctx_cleanup (int ) ;
 int stub1 (TYPE_1__*) ;

void git_odb_stream_free(git_odb_stream *stream)
{
 if (stream == ((void*)0))
  return;

 git_hash_ctx_cleanup(stream->hash_ctx);
 git__free(stream->hash_ctx);
 stream->free(stream);
}
