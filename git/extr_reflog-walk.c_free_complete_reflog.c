
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct complete_reflogs {int nr; struct complete_reflogs* ref; struct complete_reflogs* items; struct complete_reflogs* message; struct complete_reflogs* email; } ;


 int free (struct complete_reflogs*) ;

__attribute__((used)) static void free_complete_reflog(struct complete_reflogs *array)
{
 int i;

 if (!array)
  return;

 for (i = 0; i < array->nr; i++) {
  free(array->items[i].email);
  free(array->items[i].message);
 }
 free(array->items);
 free(array->ref);
 free(array);
}
