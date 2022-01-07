
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Process ;
typedef int OpenBSDProcess ;
typedef int Object ;


 int Process_done (int *) ;
 int free (int *) ;

void Process_delete(Object* cast) {
   OpenBSDProcess* this = (OpenBSDProcess*) cast;
   Process_done((Process*)cast);
   free(this);
}
