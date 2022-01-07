
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int regex_t ;
typedef int buf ;
struct TYPE_2__ {scalar_t__ icase; } ;


 int REGEX_ERROR ;
 int REG_EXTENDED ;
 int REG_ICASE ;
 int color_error ;
 int draw_header (int ,char*,char*,int,int ,int,int ) ;
 TYPE_1__ find_t ;
 int getmaxyx (int ,int,int) ;
 int refresh () ;
 int regcomp (int *,char const*,int) ;
 int regerror (int,int *,char*,int) ;
 int stdscr ;

__attribute__((used)) static int
regexp_init (regex_t * regex, const char *pattern)
{
  int y, x, rc;
  char buf[REGEX_ERROR];

  getmaxyx (stdscr, y, x);
  rc = regcomp (regex, pattern, REG_EXTENDED | (find_t.icase ? REG_ICASE : 0));

  if (rc != 0) {
    regerror (rc, regex, buf, sizeof (buf));
    draw_header (stdscr, buf, "%s", y - 1, 0, x, color_error);
    refresh ();
    return 1;
  }
  return 0;
}
