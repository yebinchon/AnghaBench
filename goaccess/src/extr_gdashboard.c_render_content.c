
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int WINDOW ;
struct TYPE_15__ {size_t module; int dash_size; } ;
struct TYPE_14__ {TYPE_1__* module; int current; } ;
struct TYPE_13__ {int offset; } ;
struct TYPE_12__ {scalar_t__ no_column_names; } ;
typedef TYPE_2__ GScroll ;
typedef size_t GModule ;
typedef TYPE_3__ GDashModule ;


 int DASH_COLS_POS ;
 int DASH_DASHES_POS ;
 int DASH_EMPTY_POS ;
 int DASH_HEAD_POS ;
 TYPE_11__ conf ;
 int get_data_pos_rows () ;
 int getmaxyx (int *,int,int) ;
 int render_cols (int *,TYPE_3__*,int*) ;
 int render_data_line (int *,TYPE_3__*,int*,int,TYPE_2__*) ;
 int render_description (int *,TYPE_3__*,int*) ;
 int render_header (int *,TYPE_3__*,int ,int*) ;

__attribute__((used)) static void
render_content (WINDOW * win, GDashModule * data, int *y, int *offset,
                int *total, GScroll * gscroll)
{
  GModule module = data->module;
  int i, j, size, h, w, data_pos = get_data_pos_rows ();

  getmaxyx (win, h, w);
  (void) w;

  size = data->dash_size;
  for (i = *offset, j = 0; i < size; i++) {

    if ((i % size) == DASH_HEAD_POS) {
      render_header (win, data, gscroll->current, y);
    } else if ((i % size) == DASH_EMPTY_POS && conf.no_column_names) {

      render_description (win, data, y);
    } else if ((i % size) == DASH_EMPTY_POS || (i % size) == size - 1) {

      (*y)++;
    } else if ((i % size) == DASH_DASHES_POS && !conf.no_column_names) {

      (*y)++;
    } else if ((i % size) == DASH_COLS_POS && !conf.no_column_names) {

      render_cols (win, data, y);
      (*y)++;
    } else if ((i % size) >= data_pos || (i % size) <= size - 2) {

      j = ((i % size) - data_pos) + gscroll->module[module].offset;

      render_data_line (win, data, y, j, gscroll);
    } else {

      (*y)++;
    }
    (*total)++;
    if (*y >= h)
      break;
  }
}
