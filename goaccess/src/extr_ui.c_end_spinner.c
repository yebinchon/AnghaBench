
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ no_parsing_spinner; } ;
struct TYPE_3__ {int curses; int mutex; int state; } ;


 int SPIN_UPDATE_INTERVAL ;
 int SPN_END ;
 TYPE_2__ conf ;
 TYPE_1__* parsing_spinner ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int usleep (int ) ;

void
end_spinner (void)
{
  if (conf.no_parsing_spinner)
    return;

  pthread_mutex_lock (&parsing_spinner->mutex);
  parsing_spinner->state = SPN_END;
  pthread_mutex_unlock (&parsing_spinner->mutex);
  if (!parsing_spinner->curses) {

    usleep(SPIN_UPDATE_INTERVAL);
  }
}
