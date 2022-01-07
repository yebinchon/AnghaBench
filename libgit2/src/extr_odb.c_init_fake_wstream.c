
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ git_off_t ;
typedef int git_odb_stream ;
typedef int git_odb_backend ;
typedef int git_object_t ;
struct TYPE_6__ {int mode; int * free; int * finalize_write; int * write; int * read; int * backend; } ;
struct TYPE_7__ {size_t size; TYPE_1__ stream; int * buffer; int type; } ;
typedef TYPE_2__ fake_wstream ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_2__*) ;
 int GIT_ERROR_CHECK_BLOBSIZE (scalar_t__) ;
 int GIT_STREAM_WRONLY ;
 int fake_wstream__free ;
 int fake_wstream__fwrite ;
 int fake_wstream__write ;
 TYPE_2__* git__calloc (int,int) ;
 int git__free (TYPE_2__*) ;
 int * git__malloc (size_t) ;

__attribute__((used)) static int init_fake_wstream(git_odb_stream **stream_p, git_odb_backend *backend, git_off_t size, git_object_t type)
{
 fake_wstream *stream;
 size_t blobsize;

 GIT_ERROR_CHECK_BLOBSIZE(size);
 blobsize = (size_t)size;

 stream = git__calloc(1, sizeof(fake_wstream));
 GIT_ERROR_CHECK_ALLOC(stream);

 stream->size = blobsize;
 stream->type = type;
 stream->buffer = git__malloc(blobsize);
 if (stream->buffer == ((void*)0)) {
  git__free(stream);
  return -1;
 }

 stream->stream.backend = backend;
 stream->stream.read = ((void*)0);
 stream->stream.write = &fake_wstream__write;
 stream->stream.finalize_write = &fake_wstream__fwrite;
 stream->stream.free = &fake_wstream__free;
 stream->stream.mode = GIT_STREAM_WRONLY;

 *stream_p = (git_odb_stream *)stream;
 return 0;
}
