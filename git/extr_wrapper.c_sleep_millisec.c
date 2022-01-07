
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int poll (int *,int ,int) ;

void sleep_millisec(int millisec)
{
 poll(((void*)0), 0, millisec);
}
