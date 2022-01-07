
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ (* write ) (int *,char*,size_t) ;int mode; int * free; int * finalize_write; int * read; int * backend; } ;
struct TYPE_13__ {int fbuf; TYPE_1__ stream; } ;
typedef TYPE_2__ loose_writestream ;
struct TYPE_14__ {int object_file_mode; int objects_dir; } ;
typedef TYPE_3__ loose_backend ;
typedef int hdr ;
typedef int git_off_t ;
typedef int git_odb_stream ;
typedef int git_odb_backend ;
typedef int git_object_t ;
struct TYPE_15__ {int ptr; } ;
typedef TYPE_4__ git_buf ;


 TYPE_4__ GIT_BUF_INIT ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_2__*) ;
 int GIT_STREAM_WRONLY ;
 int MAX_HEADER_LEN ;
 int assert (int ) ;
 int filebuf_flags (TYPE_3__*) ;
 TYPE_2__* git__calloc (int,int) ;
 int git__free (TYPE_2__*) ;
 int git_buf_dispose (TYPE_4__*) ;
 scalar_t__ git_buf_joinpath (TYPE_4__*,int ,char*) ;
 int git_filebuf_cleanup (int *) ;
 scalar_t__ git_filebuf_open (int *,int ,int ,int ) ;
 int git_odb__format_object_header (size_t*,char*,int,int ,int ) ;
 int loose_backend__writestream_finalize ;
 int loose_backend__writestream_free ;
 scalar_t__ loose_backend__writestream_write (int *,char*,size_t) ;
 scalar_t__ stub1 (int *,char*,size_t) ;

__attribute__((used)) static int loose_backend__writestream(git_odb_stream **stream_out, git_odb_backend *_backend, git_off_t length, git_object_t type)
{
 loose_backend *backend;
 loose_writestream *stream = ((void*)0);
 char hdr[MAX_HEADER_LEN];
 git_buf tmp_path = GIT_BUF_INIT;
 size_t hdrlen;
 int error;

 assert(_backend && length >= 0);

 backend = (loose_backend *)_backend;
 *stream_out = ((void*)0);

 if ((error = git_odb__format_object_header(&hdrlen,
  hdr, sizeof(hdr), length, type)) < 0)
  return error;

 stream = git__calloc(1, sizeof(loose_writestream));
 GIT_ERROR_CHECK_ALLOC(stream);

 stream->stream.backend = _backend;
 stream->stream.read = ((void*)0);
 stream->stream.write = &loose_backend__writestream_write;
 stream->stream.finalize_write = &loose_backend__writestream_finalize;
 stream->stream.free = &loose_backend__writestream_free;
 stream->stream.mode = GIT_STREAM_WRONLY;

 if (git_buf_joinpath(&tmp_path, backend->objects_dir, "tmp_object") < 0 ||
  git_filebuf_open(&stream->fbuf, tmp_path.ptr, filebuf_flags(backend),
   backend->object_file_mode) < 0 ||
  stream->stream.write((git_odb_stream *)stream, hdr, hdrlen) < 0)
 {
  git_filebuf_cleanup(&stream->fbuf);
  git__free(stream);
  stream = ((void*)0);
 }
 git_buf_dispose(&tmp_path);
 *stream_out = (git_odb_stream *)stream;

 return !stream ? -1 : 0;
}
