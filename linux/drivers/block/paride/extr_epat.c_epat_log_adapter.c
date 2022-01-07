
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t mode; int delay; int port; int device; } ;
typedef TYPE_1__ PIA ;


 int EPAT_VERSION ;
 int RR (int) ;
 int WR (int,int) ;
 int epat_connect (TYPE_1__*) ;
 int epat_disconnect (TYPE_1__*) ;
 int printk (char*,size_t,char*,int,...) ;

__attribute__((used)) static void epat_log_adapter( PIA *pi, char * scratch, int verbose )

{ int ver;
        char *mode_string[6] =
     {"4-bit","5/3","8-bit","EPP-8","EPP-16","EPP-32"};

 epat_connect(pi);
 WR(0xa,0x38);
        ver = RR(0xb);
        epat_disconnect(pi);

 printk("%s: epat %s, Shuttle EPAT chip %x at 0x%x, ",
  pi->device,EPAT_VERSION,ver,pi->port);
 printk("mode %d (%s), delay %d\n",pi->mode,
  mode_string[pi->mode],pi->delay);

}
