
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FSP2_BUS_ERR ;
 int FSP2_CMU_ERR ;
 int FSP2_CONF_ERR ;
 int FSP2_MCUE ;
 int FSP2_OPBD_ERR ;
 int FSP2_RST_WRN ;
 int bus_err_handler ;
 int cmu_err_handler ;
 int conf_err_handler ;
 int mcue_handler ;
 int node_irq_request (int ,int ) ;
 int opbd_err_handler ;
 int rst_wrn_handler ;

__attribute__((used)) static void critical_irq_setup(void)
{
 node_irq_request(FSP2_CMU_ERR, cmu_err_handler);
 node_irq_request(FSP2_BUS_ERR, bus_err_handler);
 node_irq_request(FSP2_CONF_ERR, conf_err_handler);
 node_irq_request(FSP2_OPBD_ERR, opbd_err_handler);
 node_irq_request(FSP2_MCUE, mcue_handler);
 node_irq_request(FSP2_RST_WRN, rst_wrn_handler);
}
