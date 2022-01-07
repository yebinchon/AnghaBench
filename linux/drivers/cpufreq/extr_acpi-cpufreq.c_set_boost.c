
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int boost_set_msr_each ;
 int get_online_cpus () ;
 int on_each_cpu (int ,void*,int) ;
 int pr_debug (char*,char*) ;
 int put_online_cpus () ;

__attribute__((used)) static int set_boost(int val)
{
 get_online_cpus();
 on_each_cpu(boost_set_msr_each, (void *)(long)val, 1);
 put_online_cpus();
 pr_debug("Core Boosting %sabled.\n", val ? "en" : "dis");

 return 0;
}
