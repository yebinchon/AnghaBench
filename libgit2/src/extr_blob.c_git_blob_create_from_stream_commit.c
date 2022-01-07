
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_writestream ;
typedef int git_oid ;
struct TYPE_4__ {int path_lock; } ;
struct TYPE_3__ {int hintpath; TYPE_2__ fbuf; int repo; } ;
typedef TYPE_1__ blob_writestream ;


 int blob_writestream_free (int *) ;
 int git_blob__create_from_paths (int *,int *,int ,int ,int ,int ,int) ;
 int git_filebuf_flush (TYPE_2__*) ;

int git_blob_create_from_stream_commit(git_oid *out, git_writestream *_stream)
{
 int error;
 blob_writestream *stream = (blob_writestream *) _stream;






 if ((error = git_filebuf_flush(&stream->fbuf)) < 0)
  goto cleanup;

 error = git_blob__create_from_paths(out, ((void*)0), stream->repo, stream->fbuf.path_lock,
         stream->hintpath, 0, !!stream->hintpath);

cleanup:
 blob_writestream_free(_stream);
 return error;

}
