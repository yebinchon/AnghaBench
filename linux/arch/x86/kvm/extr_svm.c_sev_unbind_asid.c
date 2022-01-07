
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sev_data_decommission {unsigned int handle; } ;
struct sev_data_deactivate {unsigned int handle; } ;
struct kvm {int dummy; } ;


 int GFP_KERNEL ;
 int kfree (struct sev_data_decommission*) ;
 struct sev_data_decommission* kzalloc (int,int ) ;
 int sev_guest_deactivate (struct sev_data_decommission*,int *) ;
 int sev_guest_decommission (struct sev_data_decommission*,int *) ;
 int sev_guest_df_flush (int *) ;
 int wbinvd_on_all_cpus () ;

__attribute__((used)) static void sev_unbind_asid(struct kvm *kvm, unsigned int handle)
{
 struct sev_data_decommission *decommission;
 struct sev_data_deactivate *data;

 if (!handle)
  return;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data)
  return;


 data->handle = handle;
 sev_guest_deactivate(data, ((void*)0));

 wbinvd_on_all_cpus();
 sev_guest_df_flush(((void*)0));
 kfree(data);

 decommission = kzalloc(sizeof(*decommission), GFP_KERNEL);
 if (!decommission)
  return;


 decommission->handle = handle;
 sev_guest_decommission(decommission, ((void*)0));

 kfree(decommission);
}
