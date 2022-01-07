
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct binder_ref_data {int dummy; } ;
struct binder_proc {int dummy; } ;


 int binder_update_ref_for_handle (struct binder_proc*,int ,int,int,struct binder_ref_data*) ;

__attribute__((used)) static int binder_dec_ref_for_handle(struct binder_proc *proc,
  uint32_t desc, bool strong, struct binder_ref_data *rdata)
{
 return binder_update_ref_for_handle(proc, desc, 0, strong, rdata);
}
