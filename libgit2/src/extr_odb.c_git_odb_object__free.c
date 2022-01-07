
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* buffer; } ;
typedef TYPE_1__ git_odb_object ;


 int git__free (void*) ;

void git_odb_object__free(void *object)
{
 if (object != ((void*)0)) {
  git__free(((git_odb_object *)object)->buffer);
  git__free(object);
 }
}
