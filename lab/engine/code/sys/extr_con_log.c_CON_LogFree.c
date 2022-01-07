
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CON_LogSize () ;
 unsigned int MAX_LOG ;

__attribute__((used)) static unsigned int CON_LogFree( void )
{
 return MAX_LOG - CON_LogSize( ) - 1;
}
