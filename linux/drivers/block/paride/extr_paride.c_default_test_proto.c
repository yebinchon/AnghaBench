
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int mode; int port; TYPE_1__* proto; int device; } ;
struct TYPE_8__ {int name; int (* disconnect ) (TYPE_2__*) ;int (* connect ) (TYPE_2__*) ;} ;
typedef TYPE_2__ PIA ;


 int pi_read_regr (TYPE_2__*,int ,int) ;
 int pi_write_regr (TYPE_2__*,int ,int,int) ;
 int printk (char*,int ,int ,int ,int ,int,int) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

__attribute__((used)) static int default_test_proto(PIA * pi, char *scratch, int verbose)
{
 int j, k;
 int e[2] = { 0, 0 };

 pi->proto->connect(pi);

 for (j = 0; j < 2; j++) {
  pi_write_regr(pi, 0, 6, 0xa0 + j * 0x10);
  for (k = 0; k < 256; k++) {
   pi_write_regr(pi, 0, 2, k ^ 0xaa);
   pi_write_regr(pi, 0, 3, k ^ 0x55);
   if (pi_read_regr(pi, 0, 2) != (k ^ 0xaa))
    e[j]++;
  }
 }
 pi->proto->disconnect(pi);

 if (verbose)
  printk("%s: %s: port 0x%x, mode  %d, test=(%d,%d)\n",
         pi->device, pi->proto->name, pi->port,
         pi->mode, e[0], e[1]);

 return (e[0] && e[1]);
}
