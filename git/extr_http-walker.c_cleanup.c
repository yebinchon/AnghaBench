
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct walker_data {struct walker_data* base; struct walker_data* next; struct walker_data* alt; } ;
struct walker {struct walker_data* data; } ;
struct alt_base {struct alt_base* base; struct alt_base* next; struct alt_base* alt; } ;


 int free (struct walker_data*) ;

__attribute__((used)) static void cleanup(struct walker *walker)
{
 struct walker_data *data = walker->data;
 struct alt_base *alt, *alt_next;

 if (data) {
  alt = data->alt;
  while (alt) {
   alt_next = alt->next;

   free(alt->base);
   free(alt);

   alt = alt_next;
  }
  free(data);
  walker->data = ((void*)0);
 }
}
