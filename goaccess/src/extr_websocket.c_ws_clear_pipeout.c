
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; } ;
typedef TYPE_1__ WSPipeOut ;
struct TYPE_6__ {scalar_t__ pipeout; } ;


 int F_OK ;
 int access (scalar_t__,int ) ;
 int close (int) ;
 int free (TYPE_1__*) ;
 int unlink (scalar_t__) ;
 TYPE_2__ wsconfig ;

__attribute__((used)) static void
ws_clear_pipeout (WSPipeOut * pipeout)
{
  if (!pipeout)
    return;

  if (pipeout->fd != -1)
    close (pipeout->fd);

  free (pipeout);

  if (wsconfig.pipeout && access (wsconfig.pipeout, F_OK) != -1)
    unlink (wsconfig.pipeout);
}
