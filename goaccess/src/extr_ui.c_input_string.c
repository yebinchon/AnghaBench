
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 char* CISENSITIVE ;
 char* CSENSITIVE ;




 size_t MIN (int,size_t) ;
 int curs_set (int) ;
 int free (char*) ;
 int getmaxyx (int *,size_t,size_t) ;
 int isprint (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int memmove (char*,char*,int) ;
 int mvwprintw (int *,int,int,char*,char*) ;
 int stdscr ;
 int strlen (char const*) ;
 int waddch (int *,size_t) ;
 size_t wgetch (int ) ;
 int wmove (int *,int,int) ;
 int wrefresh (int *) ;
 char* xmalloc (size_t) ;
 char* xstrdup (char*) ;

char *
input_string (WINDOW * win, int pos_y, int pos_x, size_t max_width,
              const char *str, int enable_case, int *toggle_case)
{
  char *s = xmalloc (max_width + 1), *tmp;
  size_t i, c, pos = 0, x = 0, quit = 1, len = 0, size_x = 0, size_y = 0;

  getmaxyx (win, size_y, size_x);
  size_x -= 4;


  if (str) {
    len = MIN (max_width, strlen (str));
    memcpy (s, str, len);
    s[len] = '\0';

    x = pos = 0;

    if (strlen (s) > size_x) {
      tmp = xstrdup (&s[0]);
      tmp[size_x] = '\0';
      mvwprintw (win, pos_y, pos_x, "%s", tmp);
      free (tmp);
    } else {
      mvwprintw (win, pos_y, pos_x, "%s", s);
    }
  } else {
    s[0] = '\0';
  }

  if (enable_case)
    mvwprintw (win, size_y - 2, 1, " %s", CSENSITIVE);

  wmove (win, pos_y, pos_x + x);
  wrefresh (win);

  curs_set (1);
  while (quit) {
    c = wgetch (stdscr);
    switch (c) {
    case 1:
    case 262:
      pos = x = 0;
      break;
    case 5:
    case 360:
      if (strlen (s) > size_x) {
        x = size_x;
        pos = strlen (s) - size_x;
      } else {
        pos = 0;
        x = strlen (s);
      }
      break;
    case 7:
    case 27:
      pos = x = 0;
      if (str && *str == '\0')
        s[0] = '\0';
      quit = 0;
      break;
    case 9:
      if (!enable_case)
        break;
      *toggle_case = *toggle_case == 0 ? 1 : 0;
      if (*toggle_case)
        mvwprintw (win, size_y - 2, 1, " %s", CISENSITIVE);
      else if (!*toggle_case)
        mvwprintw (win, size_y - 2, 1, " %s", CSENSITIVE);
      break;
    case 21:
      s[0] = '\0';
      pos = x = 0;
      break;
    case 8:
    case 127:
    case 131:
      if (pos + x > 0) {
        memmove (&s[(pos + x) - 1], &s[pos + x], (max_width - (pos + x)) + 1);
        if (pos <= 0)
          x--;
        else
          pos--;
      }
      break;
    case 129:
      if (x > 0)
        x--;
      else if (pos > 0)
        pos--;
      break;
    case 128:
      if ((x + pos) < strlen (s)) {
        if (x < size_x)
          x++;
        else
          pos++;
      }
      break;
    case 0x0a:
    case 0x0d:
    case 130:
      quit = 0;
      break;
    default:
      if (strlen (s) == max_width)
        break;
      if (!isprint (c))
        break;

      if (strlen (s) == pos) {
        s[pos + x] = c;
        s[pos + x + 1] = '\0';
        waddch (win, c);
      } else {
        memmove (&s[pos + x + 1], &s[pos + x], strlen (&s[pos + x]) + 1);
        s[pos + x] = c;
      }
      if ((x + pos) < max_width) {
        if (x < size_x)
          x++;
        else
          pos++;
      }
    }
    tmp = xstrdup (&s[pos > 0 ? pos : 0]);
    tmp[MIN (strlen (tmp), size_x)] = '\0';
    for (i = strlen (tmp); i < size_x; i++)
      mvwprintw (win, pos_y, pos_x + i, "%s", " ");
    mvwprintw (win, pos_y, pos_x, "%s", tmp);
    free (tmp);

    wmove (win, pos_y, pos_x + x);
    wrefresh (win);
  }
  curs_set (0);

  return s;
}
