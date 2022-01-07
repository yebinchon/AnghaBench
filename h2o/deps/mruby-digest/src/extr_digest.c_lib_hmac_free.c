
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_hmac {int dummy; } ;
typedef int mrb_state ;


 int mrb_free (int *,struct mrb_hmac*) ;

__attribute__((used)) static void
lib_hmac_free(mrb_state *mrb, void *ptr)
{
  struct mrb_hmac *hmac = ptr;
  if (hmac != ((void*)0))
    mrb_free(mrb, hmac);
}
