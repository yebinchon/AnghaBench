
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CL_GetPingQueueCount () ;

__attribute__((used)) static int LAN_GetPingQueueCount( void ) {
 return (CL_GetPingQueueCount());
}
