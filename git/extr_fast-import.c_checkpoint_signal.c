
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int checkpoint_requested ;

__attribute__((used)) static void checkpoint_signal(int signo)
{
 checkpoint_requested = 1;
}
