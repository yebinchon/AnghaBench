
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Z_AvailableZoneMemory (int ) ;
 int mainzone ;

int Z_AvailableMemory( void ) {
 return Z_AvailableZoneMemory( mainzone );
}
