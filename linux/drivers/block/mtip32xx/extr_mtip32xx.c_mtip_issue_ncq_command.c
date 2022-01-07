
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtip_port {int * cmd_issue_lock; int * cmd_issue; int * s_active; } ;


 int MTIP_TAG_BIT (int) ;
 size_t MTIP_TAG_INDEX (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int,int ) ;

__attribute__((used)) static inline void mtip_issue_ncq_command(struct mtip_port *port, int tag)
{
 int group = tag >> 5;


 spin_lock(&port->cmd_issue_lock[group]);
 writel((1 << MTIP_TAG_BIT(tag)),
   port->s_active[MTIP_TAG_INDEX(tag)]);
 writel((1 << MTIP_TAG_BIT(tag)),
   port->cmd_issue[MTIP_TAG_INDEX(tag)]);
 spin_unlock(&port->cmd_issue_lock[group]);
}
