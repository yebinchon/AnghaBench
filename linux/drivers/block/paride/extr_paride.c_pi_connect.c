
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* proto; } ;
struct TYPE_6__ {int (* connect ) (TYPE_2__*) ;} ;
typedef TYPE_2__ PIA ;


 int pi_claim (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

void pi_connect(PIA * pi)
{
 pi_claim(pi);
 pi->proto->connect(pi);
}
