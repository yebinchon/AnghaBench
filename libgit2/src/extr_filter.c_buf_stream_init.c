
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int free; int close; int write; } ;
struct buf_stream {int * target; TYPE_1__ parent; } ;
typedef int git_buf ;


 int buf_stream_close ;
 int buf_stream_free ;
 int buf_stream_write ;
 int git_buf_clear (int *) ;
 int memset (struct buf_stream*,int ,int) ;

__attribute__((used)) static void buf_stream_init(struct buf_stream *writer, git_buf *target)
{
 memset(writer, 0, sizeof(struct buf_stream));

 writer->parent.write = buf_stream_write;
 writer->parent.close = buf_stream_close;
 writer->parent.free = buf_stream_free;
 writer->target = target;

 git_buf_clear(target);
}
