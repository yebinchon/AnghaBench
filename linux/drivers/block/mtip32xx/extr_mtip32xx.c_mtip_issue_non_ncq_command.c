
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtip_port {int * cmd_issue; } ;


 int MTIP_TAG_BIT (int) ;
 size_t MTIP_TAG_INDEX (int) ;
 int writel (int,int ) ;

__attribute__((used)) static void mtip_issue_non_ncq_command(struct mtip_port *port, int tag)
{
 writel(1 << MTIP_TAG_BIT(tag), port->cmd_issue[MTIP_TAG_INDEX(tag)]);
}
