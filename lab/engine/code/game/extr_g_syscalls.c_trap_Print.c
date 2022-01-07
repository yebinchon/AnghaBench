
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_PRINT ;
 int syscall (int ,char const*) ;

void trap_Print( const char *text ) {
 syscall( G_PRINT, text );
}
