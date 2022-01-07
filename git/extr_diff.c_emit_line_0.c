
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_options {int use_color; int * file; } ;
typedef int FILE ;


 char const* GIT_COLOR_REVERSE ;
 char const* diff_line_prefix (struct diff_options*) ;
 int fputc (char,int *) ;
 int fputs (char const*,int *) ;
 int fwrite (char const*,int,int,int *) ;
 scalar_t__ want_color (int ) ;

__attribute__((used)) static void emit_line_0(struct diff_options *o,
   const char *set_sign, const char *set, unsigned reverse, const char *reset,
   int first, const char *line, int len)
{
 int has_trailing_newline, has_trailing_carriage_return;
 int needs_reset = 0;
 FILE *file = o->file;

 fputs(diff_line_prefix(o), file);

 has_trailing_newline = (len > 0 && line[len-1] == '\n');
 if (has_trailing_newline)
  len--;

 has_trailing_carriage_return = (len > 0 && line[len-1] == '\r');
 if (has_trailing_carriage_return)
  len--;

 if (!len && !first)
  goto end_of_line;

 if (reverse && want_color(o->use_color)) {
  fputs(GIT_COLOR_REVERSE, file);
  needs_reset = 1;
 }

 if (set_sign) {
  fputs(set_sign, file);
  needs_reset = 1;
 }

 if (first)
  fputc(first, file);

 if (!len)
  goto end_of_line;

 if (set) {
  if (set_sign && set != set_sign)
   fputs(reset, file);
  fputs(set, file);
  needs_reset = 1;
 }
 fwrite(line, len, 1, file);
 needs_reset = 1;

end_of_line:
 if (needs_reset)
  fputs(reset, file);
 if (has_trailing_carriage_return)
  fputc('\r', file);
 if (has_trailing_newline)
  fputc('\n', file);
}
