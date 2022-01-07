
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_odb_stream ;
struct TYPE_3__ {struct TYPE_3__* buffer; } ;
typedef TYPE_1__ fake_wstream ;


 int git__free (TYPE_1__*) ;

__attribute__((used)) static void fake_wstream__free(git_odb_stream *_stream)
{
 fake_wstream *stream = (fake_wstream *)_stream;

 git__free(stream->buffer);
 git__free(stream);
}
