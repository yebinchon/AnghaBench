
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 unsigned int WS_BLANK_AT_EOL ;
 unsigned int WS_CR_AT_EOL ;
 unsigned int WS_INDENT_WITH_NON_TAB ;
 unsigned int WS_SPACE_BEFORE_TAB ;
 unsigned int WS_TAB_IN_INDENT ;
 int fputc (char,int *) ;
 int fputs (char const*,int *) ;
 int fwrite (char const*,int,int,int *) ;
 scalar_t__ isspace (char const) ;
 int ws_tab_width (unsigned int) ;

__attribute__((used)) static unsigned ws_check_emit_1(const char *line, int len, unsigned ws_rule,
    FILE *stream, const char *set,
    const char *reset, const char *ws)
{
 unsigned result = 0;
 int written = 0;
 int trailing_whitespace = -1;
 int trailing_newline = 0;
 int trailing_carriage_return = 0;
 int i;


 if (len > 0 && line[len - 1] == '\n') {
  trailing_newline = 1;
  len--;
 }
 if ((ws_rule & WS_CR_AT_EOL) &&
     len > 0 && line[len - 1] == '\r') {
  trailing_carriage_return = 1;
  len--;
 }


 if (ws_rule & WS_BLANK_AT_EOL) {
  for (i = len - 1; i >= 0; i--) {
   if (isspace(line[i])) {
    trailing_whitespace = i;
    result |= WS_BLANK_AT_EOL;
   }
   else
    break;
  }
 }

 if (trailing_whitespace == -1)
  trailing_whitespace = len;


 for (i = 0; i < trailing_whitespace; i++) {
  if (line[i] == ' ')
   continue;
  if (line[i] != '\t')
   break;
  if ((ws_rule & WS_SPACE_BEFORE_TAB) && written < i) {
   result |= WS_SPACE_BEFORE_TAB;
   if (stream) {
    fputs(ws, stream);
    fwrite(line + written, i - written, 1, stream);
    fputs(reset, stream);
    fwrite(line + i, 1, 1, stream);
   }
  } else if (ws_rule & WS_TAB_IN_INDENT) {
   result |= WS_TAB_IN_INDENT;
   if (stream) {
    fwrite(line + written, i - written, 1, stream);
    fputs(ws, stream);
    fwrite(line + i, 1, 1, stream);
    fputs(reset, stream);
   }
  } else if (stream) {
   fwrite(line + written, i - written + 1, 1, stream);
  }
  written = i + 1;
 }


 if ((ws_rule & WS_INDENT_WITH_NON_TAB) && i - written >= ws_tab_width(ws_rule)) {
  result |= WS_INDENT_WITH_NON_TAB;
  if (stream) {
   fputs(ws, stream);
   fwrite(line + written, i - written, 1, stream);
   fputs(reset, stream);
  }
  written = i;
 }

 if (stream) {






  if (trailing_whitespace - written > 0) {
   fputs(set, stream);
   fwrite(line + written,
       trailing_whitespace - written, 1, stream);
   fputs(reset, stream);
  }


  if (trailing_whitespace != len) {
   fputs(ws, stream);
   fwrite(line + trailing_whitespace,
       len - trailing_whitespace, 1, stream);
   fputs(reset, stream);
  }
  if (trailing_carriage_return)
   fputc('\r', stream);
  if (trailing_newline)
   fputc('\n', stream);
 }
 return result;
}
