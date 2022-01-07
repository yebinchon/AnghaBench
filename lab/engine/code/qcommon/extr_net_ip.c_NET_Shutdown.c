
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NET_Config (int ) ;
 int WSACleanup () ;
 int networkingEnabled ;
 int qfalse ;
 int winsockInitialized ;

void NET_Shutdown( void ) {
 if ( !networkingEnabled ) {
  return;
 }

 NET_Config( qfalse );





}
