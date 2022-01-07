
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int CPUFREQ_TRANSITION_NOTIFIER ;
 int cpufreq_unregister_driver (int *) ;
 int cpufreq_unregister_notifier (int *,int ) ;
 int ls1x_cpufreq_driver ;
 int ls1x_cpufreq_notifier_block ;

__attribute__((used)) static int ls1x_cpufreq_remove(struct platform_device *pdev)
{
 cpufreq_unregister_notifier(&ls1x_cpufreq_notifier_block,
        CPUFREQ_TRANSITION_NOTIFIER);
 cpufreq_unregister_driver(&ls1x_cpufreq_driver);

 return 0;
}
