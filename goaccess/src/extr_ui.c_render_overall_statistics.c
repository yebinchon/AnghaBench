
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_3__ {scalar_t__ oneliner; int value; int * (* colorval ) () ;int field; int * (* colorlbl ) () ;} ;
typedef int GColors ;
typedef TYPE_1__ Field ;


 size_t OVERALL_NUM_COLS ;
 int render_overall_field (int *,int ,size_t,int,int *) ;
 int render_overall_value (int *,int ,size_t,int,int *) ;
 size_t strlen (int ) ;
 int * stub1 () ;
 int * stub2 () ;

__attribute__((used)) static void
render_overall_statistics (WINDOW * win, Field fields[], size_t n)
{
  GColors *color = ((void*)0);
  int x_field = 2, x_value = 0;
  size_t i, j, k, max_field = 0, max_value = 0, mod_val, y;

  for (i = 0, k = 0, y = 2; i < n; i++) {

    mod_val = k % OVERALL_NUM_COLS;


    if (k > 0 && mod_val == 0) {
      max_value = max_field = 0;
      x_value = x_field = 2;
      y++;
    }


    x_field += max_field;

    color = (*fields[i].colorlbl) ();
    render_overall_field (win, fields[i].field, y, x_field, color);


    max_field = 0;
    for (j = 0; j < n; j++) {
      size_t len = strlen (fields[j].field);
      if (j % OVERALL_NUM_COLS == mod_val && len > max_field &&
          !fields[j].oneliner)
        max_field = len;
    }

    max_value = 0;
    for (j = 0; j < n; j++) {
      size_t len = strlen (fields[j].value);
      if (j % OVERALL_NUM_COLS == mod_val && len > max_value &&
          !fields[j].oneliner)
        max_value = len;
    }


    x_value = max_field + x_field + 1;
    max_field += max_value + 2;

    color = (*fields[i].colorval) ();
    render_overall_value (win, fields[i].value, y, x_value, color);
    k += fields[i].oneliner ? OVERALL_NUM_COLS : 1;
  }
}
