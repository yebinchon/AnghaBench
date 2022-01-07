
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {scalar_t__ async_queue; scalar_t__ guest_connected; } ;


 int POLL_OUT ;
 int SIGIO ;
 int kill_fasync (scalar_t__*,int ,int ) ;

__attribute__((used)) static void send_sigio_to_port(struct port *port)
{
 if (port->async_queue && port->guest_connected)
  kill_fasync(&port->async_queue, SIGIO, POLL_OUT);
}
