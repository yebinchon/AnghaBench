
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Z_LogZoneHeap (int ,char*) ;
 int mainzone ;
 int smallzone ;

void Z_LogHeap( void ) {
 Z_LogZoneHeap( mainzone, "MAIN" );
 Z_LogZoneHeap( smallzone, "SMALL" );
}
