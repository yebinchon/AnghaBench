
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ child; int strace; } ;
typedef TYPE_1__ TraceScreen ;
typedef int Object ;
typedef int InfoScreen ;


 int CRT_enableDelay () ;
 int InfoScreen_done (int *) ;
 int SIGTERM ;
 int fclose (int ) ;
 int free (int ) ;
 int kill (scalar_t__,int ) ;
 int waitpid (scalar_t__,int *,int ) ;

void TraceScreen_delete(Object* cast) {
   TraceScreen* this = (TraceScreen*) cast;
   if (this->child > 0) {
      kill(this->child, SIGTERM);
      waitpid(this->child, ((void*)0), 0);
      fclose(this->strace);
   }
   CRT_enableDelay();
   free(InfoScreen_done((InfoScreen*)cast));
}
