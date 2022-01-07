
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CON_LogWrite (char const*) ;
 int CON_Print (char const*) ;

void Sys_Print( const char *msg )
{
 CON_LogWrite( msg );
 CON_Print( msg );
}
