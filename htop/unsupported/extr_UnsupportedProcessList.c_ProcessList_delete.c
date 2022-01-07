
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ProcessList ;


 int ProcessList_done (int *) ;
 int free (int *) ;

void ProcessList_delete(ProcessList* this) {
   ProcessList_done(this);
   free(this);
}
