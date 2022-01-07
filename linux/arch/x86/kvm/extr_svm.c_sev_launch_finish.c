
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sev_data_launch_finish {int handle; } ;
struct kvm_sev_info {int handle; } ;
struct kvm_sev_cmd {int error; } ;
struct kvm {int dummy; } ;
struct TYPE_2__ {struct kvm_sev_info sev_info; } ;


 int ENOMEM ;
 int ENOTTY ;
 int GFP_KERNEL_ACCOUNT ;
 int SEV_CMD_LAUNCH_FINISH ;
 int kfree (struct sev_data_launch_finish*) ;
 struct sev_data_launch_finish* kzalloc (int,int ) ;
 int sev_guest (struct kvm*) ;
 int sev_issue_cmd (struct kvm*,int ,struct sev_data_launch_finish*,int *) ;
 TYPE_1__* to_kvm_svm (struct kvm*) ;

__attribute__((used)) static int sev_launch_finish(struct kvm *kvm, struct kvm_sev_cmd *argp)
{
 struct kvm_sev_info *sev = &to_kvm_svm(kvm)->sev_info;
 struct sev_data_launch_finish *data;
 int ret;

 if (!sev_guest(kvm))
  return -ENOTTY;

 data = kzalloc(sizeof(*data), GFP_KERNEL_ACCOUNT);
 if (!data)
  return -ENOMEM;

 data->handle = sev->handle;
 ret = sev_issue_cmd(kvm, SEV_CMD_LAUNCH_FINISH, data, &argp->error);

 kfree(data);
 return ret;
}
