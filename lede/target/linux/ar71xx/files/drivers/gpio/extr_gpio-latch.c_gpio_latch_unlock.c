
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_latch_chip {int latch_enabled; int mutex; int latch_mutex; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static void gpio_latch_unlock(struct gpio_latch_chip *glc, bool disable)
{
 if (glc->latch_enabled)
  mutex_unlock(&glc->latch_mutex);

 if (disable)
  glc->latch_enabled = 1;

 mutex_unlock(&glc->mutex);
}
