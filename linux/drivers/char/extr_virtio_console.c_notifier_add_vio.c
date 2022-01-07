
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int dummy; } ;
struct hvc_struct {int irq_requested; int vtermno; } ;


 int EINVAL ;
 struct port* find_port_by_vtermno (int ) ;
 int resize_console (struct port*) ;

__attribute__((used)) static int notifier_add_vio(struct hvc_struct *hp, int data)
{
 struct port *port;

 port = find_port_by_vtermno(hp->vtermno);
 if (!port)
  return -EINVAL;

 hp->irq_requested = 1;
 resize_console(port);

 return 0;
}
