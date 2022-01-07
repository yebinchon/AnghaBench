
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pos; int len; int* text; scalar_t__ line_pos; int line; } ;


 int curch ;
 TYPE_1__ parse ;

char nextch (void) {
  if (parse.pos < parse.len - 1) {
    curch = parse.text[++parse.pos];
  } else {
    curch = 0;
  }
  if (curch == 10) {
    parse.line ++;
    parse.line_pos = 0;
  } else {
    if (curch) {
      parse.line_pos ++;
    }
  }
  return curch;
}
