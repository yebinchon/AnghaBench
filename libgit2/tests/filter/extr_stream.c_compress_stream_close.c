
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct compress_stream {TYPE_1__* next; int current_chunk; } ;
typedef int git_writestream ;
struct TYPE_2__ {int (* close ) (TYPE_1__*) ;} ;


 int cl_assert_equal_i (int ,int ) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static int compress_stream_close(git_writestream *s)
{
 struct compress_stream *stream = (struct compress_stream *)s;
 cl_assert_equal_i(0, stream->current_chunk);
 stream->next->close(stream->next);
 return 0;
}
