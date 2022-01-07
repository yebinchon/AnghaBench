
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int downloadName; } ;
typedef TYPE_1__ client_t ;


 int Cmd_Argv (int) ;
 int Q_strncpyz (int ,int ,int) ;
 int SV_CloseDownload (TYPE_1__*) ;

__attribute__((used)) static void SV_BeginDownload_f( client_t *cl ) {


 SV_CloseDownload( cl );



 Q_strncpyz( cl->downloadName, Cmd_Argv(1), sizeof(cl->downloadName) );
}
