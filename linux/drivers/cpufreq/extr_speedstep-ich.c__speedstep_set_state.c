
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int speedstep_set_state (unsigned int) ;

__attribute__((used)) static void _speedstep_set_state(void *_state)
{
 speedstep_set_state(*(unsigned int *)_state);
}
