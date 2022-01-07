
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pos; int line_pos; int line; } ;


 scalar_t__ last_error ;
 int last_error_line ;
 int last_error_line_pos ;
 scalar_t__ last_error_pos ;
 TYPE_1__ parse ;
 scalar_t__ strlen (scalar_t__) ;
 int zfree (scalar_t__,scalar_t__) ;
 scalar_t__ zstrdup (char const*) ;

void parse_error (const char *e) {
  if (parse.pos > last_error_pos) {
    last_error_pos = parse.pos;
    last_error_line = parse.line;
    last_error_line_pos = parse.line_pos;
    if (last_error) {
      zfree (last_error, strlen (last_error) + 1);
    }
    last_error = zstrdup (e);
  }
}
