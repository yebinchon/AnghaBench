
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i3String ;
typedef int color_t ;


 int TEXT_PADDING ;
 int WIN_WIDTH ;
 int col_x (int) ;
 int draw_util_text (int *,int *,int ,int ,int,int,int) ;
 int i3string_free (int *) ;
 int * i3string_from_utf8 (char*) ;
 int row_y (int) ;
 int surface ;

__attribute__((used)) static void txt(int col, int row, char *text, color_t fg, color_t bg) {
    int x = col_x(col);
    int y = row_y(row);
    i3String *string = i3string_from_utf8(text);
    draw_util_text(string, &surface, fg, bg, x, y, WIN_WIDTH - x - TEXT_PADDING);
    i3string_free(string);
}
