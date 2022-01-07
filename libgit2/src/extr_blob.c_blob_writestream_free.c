
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_writestream ;
struct TYPE_3__ {struct TYPE_3__* hintpath; int fbuf; } ;
typedef TYPE_1__ blob_writestream ;


 int git__free (TYPE_1__*) ;
 int git_filebuf_cleanup (int *) ;

__attribute__((used)) static void blob_writestream_free(git_writestream *_stream)
{
 blob_writestream *stream = (blob_writestream *) _stream;

 git_filebuf_cleanup(&stream->fbuf);
 git__free(stream->hintpath);
 git__free(stream);
}
