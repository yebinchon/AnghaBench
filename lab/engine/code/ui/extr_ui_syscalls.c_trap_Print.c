
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_PRINT ;
 int syscall (int ,char const*) ;

void trap_Print( const char *string ) {
 syscall( UI_PRINT, string );
}
