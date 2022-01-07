
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int git_writestream ;
typedef int git_repository ;
struct TYPE_13__ {int ptr; } ;
typedef TYPE_2__ git_buf ;
struct TYPE_12__ {int (* free ) (int *) ;int close; int write; } ;
struct TYPE_14__ {int fbuf; TYPE_1__ parent; int * repo; struct TYPE_14__* hintpath; } ;
typedef TYPE_3__ blob_writestream ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_3__*) ;
 int GIT_FILEBUF_TEMPORARY ;
 int GIT_REPOSITORY_ITEM_OBJECTS ;
 int assert (int) ;
 int blob_writestream_close ;
 int blob_writestream_free (int *) ;
 int blob_writestream_write ;
 TYPE_3__* git__calloc (int,int) ;
 TYPE_3__* git__strdup (char const*) ;
 int git_buf_cstr (TYPE_2__*) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_joinpath (TYPE_2__*,int ,char*) ;
 int git_filebuf_open_withsize (int *,int ,int ,int,int) ;
 int git_repository_item_path (TYPE_2__*,int *,int ) ;

int git_blob_create_from_stream(git_writestream **out, git_repository *repo, const char *hintpath)
{
 int error;
 git_buf path = GIT_BUF_INIT;
 blob_writestream *stream;

 assert(out && repo);

 stream = git__calloc(1, sizeof(blob_writestream));
 GIT_ERROR_CHECK_ALLOC(stream);

 if (hintpath) {
  stream->hintpath = git__strdup(hintpath);
  GIT_ERROR_CHECK_ALLOC(stream->hintpath);
 }

 stream->repo = repo;
 stream->parent.write = blob_writestream_write;
 stream->parent.close = blob_writestream_close;
 stream->parent.free = blob_writestream_free;

 if ((error = git_repository_item_path(&path, repo, GIT_REPOSITORY_ITEM_OBJECTS)) < 0
  || (error = git_buf_joinpath(&path, path.ptr, "streamed")) < 0)
  goto cleanup;

 if ((error = git_filebuf_open_withsize(&stream->fbuf, git_buf_cstr(&path), GIT_FILEBUF_TEMPORARY,
            0666, 2 * 1024 * 1024)) < 0)
  goto cleanup;

 *out = (git_writestream *) stream;

cleanup:
 if (error < 0)
  blob_writestream_free((git_writestream *) stream);

 git_buf_dispose(&path);
 return error;
}
