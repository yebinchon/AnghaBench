
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ currentnumthreads ;
 scalar_t__ numthreads ;

void AddThread(void (*func)(int))
{
 if (currentnumthreads >= numthreads) return;
 currentnumthreads++;
 func(-1);
 currentnumthreads--;
}
