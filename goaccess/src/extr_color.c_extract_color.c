
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COLORS ;
 scalar_t__ ERANGE ;
 int FATAL (char*,int,int) ;
 scalar_t__ errno ;
 scalar_t__ strncasecmp (char*,char*,int) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static int
extract_color (char *color)
{
  char *sEnd;
  int col = 0;

  if (strncasecmp (color, "color", 5) != 0)
    return -2;

  color += 5;
  col = strtol (color, &sEnd, 10);
  if (color == sEnd || *sEnd != '\0' || errno == ERANGE)
    return -2;

  if (col > COLORS)
    FATAL ("Terminal doesn't support color: %d - max colors: %d", col, COLORS);

  return col;
}
