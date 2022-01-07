
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client_t ;


 int SV_DropClient (int *,char*) ;

__attribute__((used)) static void SV_Disconnect_f( client_t *cl ) {
 SV_DropClient( cl, "disconnected" );
}
