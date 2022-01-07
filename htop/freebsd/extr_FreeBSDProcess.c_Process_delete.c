
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* jname; } ;
typedef int Process ;
typedef int Object ;
typedef TYPE_1__ FreeBSDProcess ;


 int Process_done (int *) ;
 int free (TYPE_1__*) ;

void Process_delete(Object* cast) {
   FreeBSDProcess* this = (FreeBSDProcess*) cast;
   Process_done((Process*)cast);
   free(this->jname);
   free(this);
}
