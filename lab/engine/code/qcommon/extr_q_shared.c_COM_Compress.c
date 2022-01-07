
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ qboolean ;


 scalar_t__ qfalse ;
 scalar_t__ qtrue ;

int COM_Compress( char *data_p ) {
 char *in, *out;
 int c;
 qboolean newline = qfalse, whitespace = qfalse;

 in = out = data_p;
 if (in) {
  while ((c = *in) != 0) {

   if ( c == '/' && in[1] == '/' ) {
    while (*in && *in != '\n') {
     in++;
    }

   } else if ( c == '/' && in[1] == '*' ) {
    while ( *in && ( *in != '*' || in[1] != '/' ) )
     in++;
    if ( *in )
     in += 2;

   } else if ( c == '\n' || c == '\r' ) {
    newline = qtrue;
    in++;

   } else if ( c == ' ' || c == '\t') {
    whitespace = qtrue;
    in++;

   } else {

    if (newline) {
     *out++ = '\n';
     newline = qfalse;
     whitespace = qfalse;
    } if (whitespace) {
     *out++ = ' ';
     whitespace = qfalse;
    }


    if (c == '"') {
     *out++ = c;
     in++;
     while (1) {
      c = *in;
      if (c && c != '"') {
       *out++ = c;
       in++;
      } else {
       break;
      }
     }
     if (c == '"') {
      *out++ = c;
      in++;
     }
    } else {
     *out = c;
     out++;
     in++;
    }
   }
  }

  *out = 0;
 }
 return out - data_p;
}
