
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_writestream ;


 int git__free (int *) ;

__attribute__((used)) static void compress_stream_free(git_writestream *stream)
{
 git__free(stream);
}
