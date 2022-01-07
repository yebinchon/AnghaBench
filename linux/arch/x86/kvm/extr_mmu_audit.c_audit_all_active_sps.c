
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int audit_sp ;
 int walk_all_active_sps (struct kvm*,int ) ;

__attribute__((used)) static void audit_all_active_sps(struct kvm *kvm)
{
 walk_all_active_sps(kvm, audit_sp);
}
