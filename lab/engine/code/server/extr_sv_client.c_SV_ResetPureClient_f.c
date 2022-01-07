
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gotCP; scalar_t__ pureAuthentic; } ;
typedef TYPE_1__ client_t ;


 int qfalse ;

__attribute__((used)) static void SV_ResetPureClient_f( client_t *cl ) {
 cl->pureAuthentic = 0;
 cl->gotCP = qfalse;
}
