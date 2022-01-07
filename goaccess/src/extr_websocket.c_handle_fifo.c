
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WSServer ;
struct TYPE_2__ {scalar_t__ strict; } ;


 int handle_fixed_fifo (int *) ;
 int handle_strict_fifo (int *) ;
 TYPE_1__ wsconfig ;

__attribute__((used)) static void
handle_fifo (WSServer * server)
{
  if (wsconfig.strict)
    handle_strict_fifo (server);
  else
    handle_fixed_fifo (server);
}
