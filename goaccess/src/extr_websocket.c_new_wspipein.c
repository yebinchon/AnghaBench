
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fd; } ;
typedef TYPE_1__ WSPipeIn ;


 TYPE_1__* xcalloc (int,int) ;

__attribute__((used)) static WSPipeIn *
new_wspipein (void)
{
  WSPipeIn *pipein = xcalloc (1, sizeof (WSPipeIn));
  pipein->fd = -1;

  return pipein;
}
