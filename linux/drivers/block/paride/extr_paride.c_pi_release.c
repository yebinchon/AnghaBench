
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* proto; } ;
struct TYPE_6__ {int owner; int (* release_proto ) (TYPE_2__*) ;} ;
typedef TYPE_2__ PIA ;


 int module_put (int ) ;
 int pi_unregister_parport (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

void pi_release(PIA * pi)
{
 pi_unregister_parport(pi);
 if (pi->proto->release_proto)
  pi->proto->release_proto(pi);
 module_put(pi->proto->owner);
}
