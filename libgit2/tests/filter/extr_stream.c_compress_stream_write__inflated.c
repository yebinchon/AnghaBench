
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct compress_stream {TYPE_1__* next; } ;
struct TYPE_2__ {int (* write ) (TYPE_1__*,char*,int) ;} ;


 int CHUNKSIZE ;
 int cl_git_pass (int ) ;
 int stub1 (TYPE_1__*,char*,int) ;

__attribute__((used)) static int compress_stream_write__inflated(struct compress_stream *stream, const char *buffer, size_t len)
{
 char inflated[CHUNKSIZE];
 size_t i, j;

 for (i = 0; i < len; i++) {
  for (j = 0; j < CHUNKSIZE; j++)
   inflated[j] = buffer[i];

  cl_git_pass(stream->next->write(stream->next, inflated, CHUNKSIZE));
 }

 return 0;
}
