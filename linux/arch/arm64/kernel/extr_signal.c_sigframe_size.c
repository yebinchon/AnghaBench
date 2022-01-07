
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_sigframe_user_layout {int size; } ;
struct rt_sigframe {int dummy; } ;


 int max (int ,int) ;
 size_t round_up (int ,int) ;

__attribute__((used)) static size_t sigframe_size(struct rt_sigframe_user_layout const *user)
{
 return round_up(max(user->size, sizeof(struct rt_sigframe)), 16);
}
