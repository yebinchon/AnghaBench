
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int fbuf; } ;
typedef TYPE_1__ loose_writestream ;
typedef int loose_backend ;
typedef int git_oid ;
struct TYPE_10__ {scalar_t__ backend; } ;
typedef TYPE_2__ git_odb_stream ;
struct TYPE_11__ {int ptr; } ;
typedef TYPE_3__ git_buf ;


 TYPE_3__ GIT_BUF_INIT ;
 int git_buf_dispose (TYPE_3__*) ;
 int git_filebuf_commit_at (int *,int ) ;
 scalar_t__ object_file_name (TYPE_3__*,int *,int const*) ;
 scalar_t__ object_mkdir (TYPE_3__*,int *) ;

__attribute__((used)) static int loose_backend__writestream_finalize(git_odb_stream *_stream, const git_oid *oid)
{
 loose_writestream *stream = (loose_writestream *)_stream;
 loose_backend *backend = (loose_backend *)_stream->backend;
 git_buf final_path = GIT_BUF_INIT;
 int error = 0;

 if (object_file_name(&final_path, backend, oid) < 0 ||
  object_mkdir(&final_path, backend) < 0)
  error = -1;
 else
  error = git_filebuf_commit_at(
   &stream->fbuf, final_path.ptr);

 git_buf_dispose(&final_path);

 return error;
}
