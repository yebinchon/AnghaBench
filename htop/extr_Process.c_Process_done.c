
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int comm; } ;
typedef TYPE_1__ Process ;


 int assert (int ) ;
 int free (int ) ;

void Process_done(Process* this) {
   assert (this != ((void*)0));
   free(this->comm);
}
