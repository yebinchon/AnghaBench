
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_sigframe_user_layout {int size; int limit; int end_offset; } ;
struct _aarch64_ctx {int dummy; } ;


 scalar_t__ TERMINATOR_SIZE ;
 int sigframe_alloc (struct rt_sigframe_user_layout*,int *,int) ;

__attribute__((used)) static int sigframe_alloc_end(struct rt_sigframe_user_layout *user)
{
 int ret;


 user->limit += TERMINATOR_SIZE;

 ret = sigframe_alloc(user, &user->end_offset,
        sizeof(struct _aarch64_ctx));
 if (ret)
  return ret;


 user->limit = user->size;
 return 0;
}
