
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int mrb_state ;


 scalar_t__ mrb_malloc (int *,int) ;

__attribute__((used)) static struct stat *
mrb_stat_alloc(mrb_state *mrb)
{
  return (struct stat *)mrb_malloc(mrb, sizeof(struct stat));
}
