
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,int,int,char*) ;
 char* last_error ;
 int last_error_line ;
 int last_error_line_pos ;
 int stderr ;

void tl_print_parse_error (void) {
  fprintf (stderr, "Error near line %d pos %d: `%s`\n", last_error_line + 1, last_error_line_pos + 1, last_error);
}
