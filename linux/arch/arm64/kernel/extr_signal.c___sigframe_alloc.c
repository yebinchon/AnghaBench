
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_sigframe_user_layout {size_t limit; size_t size; unsigned long extra_offset; } ;
struct extra_context {int dummy; } ;


 int ENOMEM ;
 size_t EXTRA_CONTEXT_SIZE ;
 size_t SIGFRAME_MAXSZ ;
 size_t TERMINATOR_SIZE ;
 size_t round_up (size_t,int) ;

__attribute__((used)) static int __sigframe_alloc(struct rt_sigframe_user_layout *user,
       unsigned long *offset, size_t size, bool extend)
{
 size_t padded_size = round_up(size, 16);

 if (padded_size > user->limit - user->size &&
     !user->extra_offset &&
     extend) {
  int ret;

  user->limit += EXTRA_CONTEXT_SIZE;
  ret = __sigframe_alloc(user, &user->extra_offset,
           sizeof(struct extra_context), 0);
  if (ret) {
   user->limit -= EXTRA_CONTEXT_SIZE;
   return ret;
  }


  user->size += TERMINATOR_SIZE;





  user->limit = SIGFRAME_MAXSZ - TERMINATOR_SIZE;
 }


 if (padded_size > user->limit - user->size)
  return -ENOMEM;

 *offset = user->size;
 user->size += padded_size;

 return 0;
}
