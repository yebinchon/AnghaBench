
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GSLList ;
typedef int GColors ;


 int * color_list ;
 int find_color_in_list ;
 int free (int *) ;
 int * list_create (int *) ;
 int * list_find (int *,int ,int *) ;
 int * list_insert_prepend (int *,int *) ;

__attribute__((used)) static void
prepend_color (GColors ** color)
{
  GSLList *match = ((void*)0);


  if (color_list == ((void*)0)) {
    color_list = list_create (*color);
  }


  else if ((match = list_find (color_list, find_color_in_list, *color))) {


    free (*color);
    *color = ((void*)0);
  } else {

    color_list = list_insert_prepend (color_list, *color);
  }
}
