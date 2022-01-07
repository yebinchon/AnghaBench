
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int id; scalar_t__ portdev; } ;
typedef int ssize_t ;


 int __send_control_msg (scalar_t__,int ,unsigned int,unsigned int) ;

__attribute__((used)) static ssize_t send_control_msg(struct port *port, unsigned int event,
    unsigned int value)
{

 if (port->portdev)
  return __send_control_msg(port->portdev, port->id, event, value);
 return 0;
}
