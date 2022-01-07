
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int speedstep_get_frequency (int ) ;
 int speedstep_processor ;

__attribute__((used)) static void get_freq_data(void *_speed)
{
 unsigned int *speed = _speed;

 *speed = speedstep_get_frequency(speedstep_processor);
}
