
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_hmac {int ctx; } ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 int E_ARGUMENT_ERROR ;
 scalar_t__ SIZE_MAX ;
 int mrb_raise (int *,int ,char*) ;
 int picohash_update (int *,unsigned char*,scalar_t__) ;

__attribute__((used)) static void
lib_hmac_update(mrb_state *mrb, struct mrb_hmac *hmac, unsigned char *data, mrb_int len)
{





  picohash_update(&hmac->ctx, data, len);
}
