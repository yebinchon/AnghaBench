
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int progress_update ;

__attribute__((used)) static void progress_interval(int signum)
{
 progress_update = 1;
}
