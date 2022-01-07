
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* proto; } ;
struct TYPE_5__ {int (* read_block ) (TYPE_2__*,char*,int) ;} ;
typedef TYPE_2__ PIA ;


 int stub1 (TYPE_2__*,char*,int) ;

void pi_read_block(PIA * pi, char *buf, int count)
{
 pi->proto->read_block(pi, buf, count);
}
