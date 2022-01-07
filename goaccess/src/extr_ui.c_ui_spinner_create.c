
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ no_parsing_spinner; } ;
struct TYPE_5__ {int thread; } ;
typedef TYPE_1__ GSpinner ;


 TYPE_4__ conf ;
 int pthread_create (int *,int *,void*,TYPE_1__*) ;
 int pthread_detach (int ) ;
 int ui_spinner ;

void
ui_spinner_create (GSpinner * spinner)
{
  if (conf.no_parsing_spinner)
    return;

  pthread_create (&(spinner->thread), ((void*)0), (void *) &ui_spinner, spinner);
  pthread_detach (spinner->thread);
}
