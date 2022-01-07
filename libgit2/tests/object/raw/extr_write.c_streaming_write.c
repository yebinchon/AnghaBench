
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int data; int type; } ;
typedef TYPE_1__ git_rawobj ;
typedef int git_oid ;
typedef int git_odb_stream ;
typedef int git_odb ;


 int cl_git_pass (int) ;
 int git_odb_open_wstream (int **,int *,int ,int ) ;
 int git_odb_stream_finalize_write (int *,int *) ;
 int git_odb_stream_free (int *) ;
 int git_odb_stream_write (int *,int ,int ) ;

__attribute__((used)) static void streaming_write(git_oid *oid, git_odb *odb, git_rawobj *raw)
{
   git_odb_stream *stream;
   int error;

   cl_git_pass(git_odb_open_wstream(&stream, odb, raw->len, raw->type));
   git_odb_stream_write(stream, raw->data, raw->len);
   error = git_odb_stream_finalize_write(oid, stream);
   git_odb_stream_free(stream);
   cl_git_pass(error);
}
