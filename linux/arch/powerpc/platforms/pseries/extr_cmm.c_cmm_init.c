
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int FW_FEATURE_CMO ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int cmm_dev ;
 scalar_t__ cmm_disabled ;
 int cmm_mem_isolate_nb ;
 int cmm_mem_nb ;
 int cmm_oom_nb ;
 int cmm_reboot_nb ;
 int cmm_sysfs_register (int *) ;
 int cmm_thread ;
 int cmm_thread_ptr ;
 int cmm_unregister_sysfs (int *) ;
 int firmware_has_feature (int ) ;
 int kthread_run (int ,int *,char*) ;
 scalar_t__ register_memory_isolate_notifier (int *) ;
 scalar_t__ register_memory_notifier (int *) ;
 int register_oom_notifier (int *) ;
 int register_reboot_notifier (int *) ;
 int unregister_memory_isolate_notifier (int *) ;
 int unregister_memory_notifier (int *) ;
 int unregister_oom_notifier (int *) ;
 int unregister_reboot_notifier (int *) ;

__attribute__((used)) static int cmm_init(void)
{
 int rc = -ENOMEM;

 if (!firmware_has_feature(FW_FEATURE_CMO))
  return -EOPNOTSUPP;

 if ((rc = register_oom_notifier(&cmm_oom_nb)) < 0)
  return rc;

 if ((rc = register_reboot_notifier(&cmm_reboot_nb)))
  goto out_oom_notifier;

 if ((rc = cmm_sysfs_register(&cmm_dev)))
  goto out_reboot_notifier;

 if (register_memory_notifier(&cmm_mem_nb) ||
     register_memory_isolate_notifier(&cmm_mem_isolate_nb))
  goto out_unregister_notifier;

 if (cmm_disabled)
  return rc;

 cmm_thread_ptr = kthread_run(cmm_thread, ((void*)0), "cmmthread");
 if (IS_ERR(cmm_thread_ptr)) {
  rc = PTR_ERR(cmm_thread_ptr);
  goto out_unregister_notifier;
 }

 return rc;

out_unregister_notifier:
 unregister_memory_notifier(&cmm_mem_nb);
 unregister_memory_isolate_notifier(&cmm_mem_isolate_nb);
 cmm_unregister_sysfs(&cmm_dev);
out_reboot_notifier:
 unregister_reboot_notifier(&cmm_reboot_nb);
out_oom_notifier:
 unregister_oom_notifier(&cmm_oom_nb);
 return rc;
}
