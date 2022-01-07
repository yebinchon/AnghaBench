
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;
typedef int mrb_int ;


 int mrb_free (int *,void*) ;

__attribute__((used)) static void
default_free_cb(mrb_state *mrb, const char *base, mrb_int len, void *cb_data)
{
  if (base != ((void*)0))
    mrb_free(mrb, (void *)base);
}
