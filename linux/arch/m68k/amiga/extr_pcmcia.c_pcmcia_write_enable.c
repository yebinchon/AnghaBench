
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cardstatus; } ;


 int GAYLE_CS_DA ;
 int GAYLE_CS_WR ;
 TYPE_1__ gayle ;

void pcmcia_write_enable(void)
{
 gayle.cardstatus = GAYLE_CS_WR|GAYLE_CS_DA;
}
