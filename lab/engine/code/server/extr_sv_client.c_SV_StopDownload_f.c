
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* downloadName; } ;
typedef TYPE_1__ client_t ;
struct TYPE_6__ {TYPE_1__* clients; } ;


 int Com_DPrintf (char*,int,scalar_t__*) ;
 int SV_CloseDownload (TYPE_1__*) ;
 TYPE_2__ svs ;

__attribute__((used)) static void SV_StopDownload_f( client_t *cl ) {
 if (*cl->downloadName)
  Com_DPrintf( "clientDownload: %d : file \"%s\" aborted\n", (int) (cl - svs.clients), cl->downloadName );

 SV_CloseDownload( cl );
}
