
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int error (char*) ;
 scalar_t__ ferror (int ) ;
 int getc (int ) ;
 int stdin ;

__attribute__((used)) static int
do_getc (void)
{
  int c = getc (stdin);

  if (c == EOF)
    {
      if (ferror (stdin))
 error ("error while reading standard input");
    }

  return c;
}
