
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int msg; int code; } ;
struct TYPE_9__ {TYPE_1__ error; } ;
struct TYPE_10__ {scalar_t__ source_port; int ipv6; int dest_port; TYPE_2__ u; } ;
typedef TYPE_3__ tftp_packet_t ;
struct TYPE_11__ {scalar_t__* tid; } ;
typedef TYPE_4__ tftp_connection_t ;


 int CLIENT ;
 int SERVER ;
 int assert (int) ;
 TYPE_4__* get_connection_f (int ,int ) ;
 int recv_error_packets ;
 int show_error (int ) ;
 int show_ipv6 (int ) ;
 int tftp_conn_complete (TYPE_4__*) ;
 int vkprintf (int,char*,int ,scalar_t__,...) ;
 int work_complete ;
 int working_mode ;

__attribute__((used)) static int process_error (tftp_packet_t *p) {
  recv_error_packets++;
  vkprintf (1, "Receive error packet from [%s]:%d. %s (%s).\n", show_ipv6 (p->ipv6), p->source_port, show_error (p->u.error.code), p->u.error.msg);
  if (working_mode == SERVER) {
    tftp_connection_t *c = get_connection_f (p->dest_port, 0);
    if (c && c->tid[1-working_mode] == p->source_port) {
      vkprintf (1, "Clean listening connection for [%s]:%d.\n", show_ipv6 (p->ipv6), p->source_port);
      tftp_conn_complete (c);
    }
  } else {
    assert (working_mode == CLIENT);
    work_complete = 2;
  }
  return 0;
}
