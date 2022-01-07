
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int all_variables ;
 int do_getc () ;
 int do_ungetc (int) ;
 int fputs (char const*,int ) ;
 int fwrite (char*,size_t,int,int ) ;
 char* getenv (char*) ;
 int putchar (int) ;
 int sorted_string_list_member (int *,char*) ;
 int stdout ;
 int variables_set ;
 char* xrealloc (char*,size_t) ;

__attribute__((used)) static void
subst_from_stdin (void)
{
  static char *buffer;
  static size_t bufmax;
  static size_t buflen;
  int c;

  for (;;)
    {
      c = do_getc ();
      if (c == EOF)
 break;

      if (c == '$')
 {
   unsigned short int opening_brace = 0;
   unsigned short int closing_brace = 0;

   c = do_getc ();
   if (c == '{')
     {
       opening_brace = 1;
       c = do_getc ();
     }
   if ((c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z') || c == '_')
     {
       unsigned short int valid;


       buflen = 0;
       do
  {
    if (buflen >= bufmax)
      {
        bufmax = 2 * bufmax + 10;
        buffer = xrealloc (buffer, bufmax);
      }
    buffer[buflen++] = c;

    c = do_getc ();
  }
       while ((c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z')
       || (c >= '0' && c <= '9') || c == '_');

       if (opening_brace)
  {
    if (c == '}')
      {
        closing_brace = 1;
        valid = 1;
      }
    else
      {
        valid = 0;
        do_ungetc (c);
      }
  }
       else
  {
    valid = 1;
    do_ungetc (c);
  }

       if (valid)
  {

    if (buflen >= bufmax)
      {
        bufmax = 2 * bufmax + 10;
        buffer = xrealloc (buffer, bufmax);
      }
    buffer[buflen] = '\0';


    if (!all_variables
        && !sorted_string_list_member (&variables_set, buffer))
      valid = 0;
  }

       if (valid)
  {

    const char *env_value = getenv (buffer);

    if (env_value != ((void*)0))
      fputs (env_value, stdout);
  }
       else
  {



    putchar ('$');
    if (opening_brace)
      putchar ('{');
    fwrite (buffer, buflen, 1, stdout);
    if (closing_brace)
      putchar ('}');
  }
     }
   else
     {
       do_ungetc (c);
       putchar ('$');
       if (opening_brace)
  putchar ('{');
     }
 }
      else
 putchar (c);
    }
}
