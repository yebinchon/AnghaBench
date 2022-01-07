
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sev_data_dbg {unsigned long dst_addr; unsigned long src_addr; int len; int handle; } ;
struct kvm_sev_info {int handle; } ;
struct kvm {int dummy; } ;
struct TYPE_2__ {struct kvm_sev_info sev_info; } ;


 int ENOMEM ;
 int GFP_KERNEL_ACCOUNT ;
 int SEV_CMD_DBG_DECRYPT ;
 int SEV_CMD_DBG_ENCRYPT ;
 int kfree (struct sev_data_dbg*) ;
 struct sev_data_dbg* kzalloc (int,int ) ;
 int sev_issue_cmd (struct kvm*,int ,struct sev_data_dbg*,int*) ;
 TYPE_1__* to_kvm_svm (struct kvm*) ;

__attribute__((used)) static int __sev_issue_dbg_cmd(struct kvm *kvm, unsigned long src,
          unsigned long dst, int size,
          int *error, bool enc)
{
 struct kvm_sev_info *sev = &to_kvm_svm(kvm)->sev_info;
 struct sev_data_dbg *data;
 int ret;

 data = kzalloc(sizeof(*data), GFP_KERNEL_ACCOUNT);
 if (!data)
  return -ENOMEM;

 data->handle = sev->handle;
 data->dst_addr = dst;
 data->src_addr = src;
 data->len = size;

 ret = sev_issue_cmd(kvm,
       enc ? SEV_CMD_DBG_ENCRYPT : SEV_CMD_DBG_DECRYPT,
       data, error);
 kfree(data);
 return ret;
}
