
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fbuf; } ;
typedef TYPE_1__ loose_writestream ;
typedef int git_odb_stream ;


 int git__free (TYPE_1__*) ;
 int git_filebuf_cleanup (int *) ;

__attribute__((used)) static void loose_backend__writestream_free(git_odb_stream *_stream)
{
 loose_writestream *stream = (loose_writestream *)_stream;

 git_filebuf_cleanup(&stream->fbuf);
 git__free(stream);
}
