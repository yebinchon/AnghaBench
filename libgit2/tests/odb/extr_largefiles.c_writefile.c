
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_odb_stream ;
struct TYPE_5__ {int size; int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_OBJECT_BLOB ;
 int LARGEFILE_SIZE ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_puts (TYPE_1__*,char*) ;
 int git_odb_open_wstream (int **,int ,int ,int ) ;
 int git_odb_stream_finalize_write (int *,int *) ;
 int git_odb_stream_free (int *) ;
 int git_odb_stream_write (int *,int ,int ) ;
 int odb ;

__attribute__((used)) static void writefile(git_oid *oid)
{
 static git_odb_stream *stream;
 git_buf buf = GIT_BUF_INIT;
 size_t i;

 for (i = 0; i < 3041; i++)
  cl_git_pass(git_buf_puts(&buf, "Hello, world.\n"));

 cl_git_pass(git_odb_open_wstream(&stream, odb, LARGEFILE_SIZE, GIT_OBJECT_BLOB));
 for (i = 0; i < 126103; i++)
  cl_git_pass(git_odb_stream_write(stream, buf.ptr, buf.size));

 cl_git_pass(git_odb_stream_finalize_write(oid, stream));

 git_odb_stream_free(stream);
 git_buf_dispose(&buf);
}
