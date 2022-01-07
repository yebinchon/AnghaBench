
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tickets; } ;


 TYPE_1__ session_tickets ;
 int time (int *) ;
 int update_tickets (int *,int ) ;

__attribute__((used)) static void do_internal_update(void *unused)
{
    update_tickets(&session_tickets.tickets, time(((void*)0)));
}
