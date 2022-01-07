
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powernow_k8_data {int dummy; } ;


 struct powernow_k8_data* __this_cpu_read (int ) ;
 int powernow_data ;
 int query_current_values_with_pending_wait (struct powernow_k8_data*) ;

__attribute__((used)) static void query_values_on_cpu(void *_err)
{
 int *err = _err;
 struct powernow_k8_data *data = __this_cpu_read(powernow_data);

 *err = query_current_values_with_pending_wait(data);
}
