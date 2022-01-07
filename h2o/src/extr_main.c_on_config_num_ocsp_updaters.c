
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yoml_t ;
typedef scalar_t__ ssize_t ;
typedef int h2o_configurator_context_t ;
typedef int h2o_configurator_command_t ;


 int h2o_configurator_errprintf (int *,int *,char*) ;
 scalar_t__ h2o_configurator_scanf (int *,int *,char*,scalar_t__*) ;
 int h2o_sem_set_capacity (int *,scalar_t__) ;
 int ocsp_updater_semaphore ;

__attribute__((used)) static int on_config_num_ocsp_updaters(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    ssize_t n;
    if (h2o_configurator_scanf(cmd, node, "%zd", &n) != 0)
        return -1;
    if (n <= 0) {
        h2o_configurator_errprintf(cmd, node, "num-ocsp-updaters must be >=1");
        return -1;
    }
    h2o_sem_set_capacity(&ocsp_updater_semaphore, n);
    return 0;
}
