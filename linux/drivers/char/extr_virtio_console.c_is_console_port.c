
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hvc; } ;
struct port {TYPE_1__ cons; } ;



__attribute__((used)) static bool is_console_port(struct port *port)
{
 if (port->cons.hvc)
  return 1;
 return 0;
}
