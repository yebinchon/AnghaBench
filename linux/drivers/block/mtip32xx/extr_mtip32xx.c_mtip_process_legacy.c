
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtip_port {int * cmd_issue; int flags; } ;
struct mtip_cmd {int dummy; } ;
struct driver_data {struct mtip_port* port; } ;


 int MTIP_PF_IC_ACTIVE_BIT ;
 int MTIP_TAG_BIT (int ) ;
 int MTIP_TAG_INDEX (int ) ;
 int MTIP_TAG_INTERNAL ;
 struct mtip_cmd* mtip_cmd_from_tag (struct driver_data*,int ) ;
 int mtip_complete_command (struct mtip_cmd*,int ) ;
 int readl (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline void mtip_process_legacy(struct driver_data *dd, u32 port_stat)
{
 struct mtip_port *port = dd->port;
 struct mtip_cmd *cmd = mtip_cmd_from_tag(dd, MTIP_TAG_INTERNAL);

 if (test_bit(MTIP_PF_IC_ACTIVE_BIT, &port->flags) && cmd) {
  int group = MTIP_TAG_INDEX(MTIP_TAG_INTERNAL);
  int status = readl(port->cmd_issue[group]);

  if (!(status & (1 << MTIP_TAG_BIT(MTIP_TAG_INTERNAL))))
   mtip_complete_command(cmd, 0);
 }
}
