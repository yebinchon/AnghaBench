
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetStdHandle (int ) ;
 int INFINITE ;
 int STD_INPUT_HANDLE ;
 int Sleep (int) ;
 int WaitForSingleObject (int ,int) ;

void Sys_Sleep( int msec )
{
 if( msec == 0 )
  return;
 if( msec < 0 )
  return;

 Sleep( msec );

}
