
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_sev_info {int fd; } ;
struct kvm {int dummy; } ;
struct TYPE_2__ {struct kvm_sev_info sev_info; } ;


 int __sev_issue_cmd (int ,int,void*,int*) ;
 TYPE_1__* to_kvm_svm (struct kvm*) ;

__attribute__((used)) static int sev_issue_cmd(struct kvm *kvm, int id, void *data, int *error)
{
 struct kvm_sev_info *sev = &to_kvm_svm(kvm)->sev_info;

 return __sev_issue_cmd(sev->fd, id, data, error);
}
