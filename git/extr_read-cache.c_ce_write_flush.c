
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_hash_ctx ;
struct TYPE_2__ {int (* update_fn ) (int *,int ,unsigned int) ;} ;


 int stub1 (int *,int ,unsigned int) ;
 TYPE_1__* the_hash_algo ;
 int write_buffer ;
 unsigned int write_buffer_len ;
 scalar_t__ write_in_full (int,int ,unsigned int) ;

__attribute__((used)) static int ce_write_flush(git_hash_ctx *context, int fd)
{
 unsigned int buffered = write_buffer_len;
 if (buffered) {
  the_hash_algo->update_fn(context, write_buffer, buffered);
  if (write_in_full(fd, write_buffer, buffered) < 0)
   return -1;
  write_buffer_len = 0;
 }
 return 0;
}
