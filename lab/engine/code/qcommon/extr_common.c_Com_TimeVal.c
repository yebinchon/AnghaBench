
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Sys_Milliseconds () ;
 int com_frameTime ;

int Com_TimeVal(int minMsec)
{
 int timeVal;

 timeVal = Sys_Milliseconds() - com_frameTime;

 if(timeVal >= minMsec)
  timeVal = 0;
 else
  timeVal = minMsec - timeVal;

 return timeVal;
}
