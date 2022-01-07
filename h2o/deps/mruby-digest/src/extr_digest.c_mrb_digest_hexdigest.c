
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int digest2hexdigest (int *,int ) ;
 int mrb_digest_digest (int *,int ) ;

__attribute__((used)) static mrb_value
mrb_digest_hexdigest(mrb_state *mrb, mrb_value self)
{
  return digest2hexdigest(mrb, mrb_digest_digest(mrb, self));
}
