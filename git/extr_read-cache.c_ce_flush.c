
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_hash_ctx ;
struct TYPE_2__ {scalar_t__ rawsz; int (* final_fn ) (scalar_t__,int *) ;int (* update_fn ) (int *,scalar_t__,unsigned int) ;} ;


 scalar_t__ WRITE_BUFFER_SIZE ;
 int hashcpy (unsigned char*,scalar_t__) ;
 int stub1 (int *,scalar_t__,unsigned int) ;
 int stub2 (scalar_t__,int *) ;
 TYPE_1__* the_hash_algo ;
 scalar_t__ write_buffer ;
 unsigned int write_buffer_len ;
 scalar_t__ write_in_full (int,scalar_t__,unsigned int) ;

__attribute__((used)) static int ce_flush(git_hash_ctx *context, int fd, unsigned char *hash)
{
 unsigned int left = write_buffer_len;

 if (left) {
  write_buffer_len = 0;
  the_hash_algo->update_fn(context, write_buffer, left);
 }


 if (left + the_hash_algo->rawsz > WRITE_BUFFER_SIZE) {
  if (write_in_full(fd, write_buffer, left) < 0)
   return -1;
  left = 0;
 }


 the_hash_algo->final_fn(write_buffer + left, context);
 hashcpy(hash, write_buffer + left);
 left += the_hash_algo->rawsz;
 return (write_in_full(fd, write_buffer, left) < 0) ? -1 : 0;
}
