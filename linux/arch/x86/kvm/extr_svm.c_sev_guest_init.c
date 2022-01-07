
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_sev_info {int active; int asid; int regions_list; } ;
struct kvm_sev_cmd {int error; } ;
struct kvm {int dummy; } ;
struct TYPE_2__ {struct kvm_sev_info sev_info; } ;


 int EBUSY ;
 int INIT_LIST_HEAD (int *) ;
 int __sev_asid_free (int) ;
 int sev_asid_new () ;
 int sev_platform_init (int *) ;
 TYPE_1__* to_kvm_svm (struct kvm*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sev_guest_init(struct kvm *kvm, struct kvm_sev_cmd *argp)
{
 struct kvm_sev_info *sev = &to_kvm_svm(kvm)->sev_info;
 int asid, ret;

 ret = -EBUSY;
 if (unlikely(sev->active))
  return ret;

 asid = sev_asid_new();
 if (asid < 0)
  return ret;

 ret = sev_platform_init(&argp->error);
 if (ret)
  goto e_free;

 sev->active = 1;
 sev->asid = asid;
 INIT_LIST_HEAD(&sev->regions_list);

 return 0;

e_free:
 __sev_asid_free(asid);
 return ret;
}
