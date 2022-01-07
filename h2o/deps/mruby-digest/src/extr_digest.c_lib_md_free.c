
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_md {int dummy; } ;
typedef int mrb_state ;


 int mrb_free (int *,struct mrb_md*) ;

__attribute__((used)) static void
lib_md_free(mrb_state *mrb, void *ptr)
{
  struct mrb_md *md = ptr;
  if (md != ((void*)0))
    mrb_free(mrb, md);
}
