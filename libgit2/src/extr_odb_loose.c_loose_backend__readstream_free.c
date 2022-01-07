
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zstream; int map; } ;
typedef TYPE_1__ loose_readstream ;
typedef int git_odb_stream ;


 int git__free (TYPE_1__*) ;
 int git_futils_mmap_free (int *) ;
 int git_zstream_free (int *) ;

__attribute__((used)) static void loose_backend__readstream_free(git_odb_stream *_stream)
{
 loose_readstream *stream = (loose_readstream *)_stream;

 git_futils_mmap_free(&stream->map);
 git_zstream_free(&stream->zstream);
 git__free(stream);
}
