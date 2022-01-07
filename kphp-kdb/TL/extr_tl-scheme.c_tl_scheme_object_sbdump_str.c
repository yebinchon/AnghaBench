
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_buffer {int dummy; } ;


 int expand_utf8 ;
 int fprintf (int ,char*,...) ;
 int isprint (char const) ;
 int stderr ;
 int tl_string_buffer_append_char (struct tl_buffer*,char const) ;
 int tl_string_buffer_printf (struct tl_buffer*,char*,int) ;
 int verbosity ;

__attribute__((used)) static void tl_scheme_object_sbdump_str (struct tl_buffer *b, const char *z) {
  const char *s;
  if (verbosity >= 4) {
    fprintf (stderr, "tl_scheme_object_bdump_str:");
    for (s = z; *s; s++) {
      fprintf (stderr, " %02x", (int) (unsigned char) *s);
    }
    fprintf (stderr, "\n");
    for (s = z; *s; s++) {
      fprintf (stderr, "  %c", *s);
    }
    fprintf (stderr, "\n");
  }
  tl_string_buffer_append_char (b, '"');
  for (s = z; *s; s++) {
    switch (*s) {
      case '\n':
        tl_string_buffer_append_char (b, '\\');
        tl_string_buffer_append_char (b, 'n');
      break;
      case '\r':
        tl_string_buffer_append_char (b, '\\');
        tl_string_buffer_append_char (b, 'r');
      break;
      case '\t':
        tl_string_buffer_append_char (b, '\\');
        tl_string_buffer_append_char (b, 't');
      break;
      case '\\':
        tl_string_buffer_append_char (b, '\\');
        tl_string_buffer_append_char (b, '\\');
      break;
      case '"':
        tl_string_buffer_append_char (b, '\\');
        tl_string_buffer_append_char (b, '"');
      break;
      default:
        if (isprint (*s) || !expand_utf8) {
          tl_string_buffer_append_char (b, *s);
        } else {
          tl_string_buffer_printf (b, "\\x%02x", (int) (unsigned char) *s);
        }
      break;
    }
  }
  tl_string_buffer_append_char (b, '"');
}
