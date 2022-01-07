
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_latch_chip {int latch_enabled; int latch_mutex; int mutex; } ;


 int mutex_lock (int *) ;

__attribute__((used)) static void gpio_latch_lock(struct gpio_latch_chip *glc, bool enable)
{
 mutex_lock(&glc->mutex);

 if (enable)
  glc->latch_enabled = 1;

 if (glc->latch_enabled)
  mutex_lock(&glc->latch_mutex);
}
