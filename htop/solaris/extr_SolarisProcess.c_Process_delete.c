
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* zname; } ;
typedef TYPE_1__ SolarisProcess ;
typedef int Process ;
typedef int Object ;


 int Process_done (int *) ;
 int free (TYPE_1__*) ;

void Process_delete(Object* cast) {
   SolarisProcess* sp = (SolarisProcess*) cast;
   Process_done((Process*)cast);
   free(sp->zname);
   free(sp);
}
