#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  WINDOW ;

/* Variables and functions */
 char* CISENSITIVE ; 
 char* CSENSITIVE ; 
#define  KEY_BACKSPACE 131 
#define  KEY_ENTER 130 
#define  KEY_LEFT 129 
#define  KEY_RIGHT 128 
 size_t FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int,char*,char*) ; 
 int /*<<< orphan*/  stdscr ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 char* FUNC13 (size_t) ; 
 char* FUNC14 (char*) ; 

char *
FUNC15 (WINDOW * win, int pos_y, int pos_x, size_t max_width,
              const char *str, int enable_case, int *toggle_case)
{
  char *s = FUNC13 (max_width + 1), *tmp;
  size_t i, c, pos = 0, x = 0, quit = 1, len = 0, size_x = 0, size_y = 0;

  FUNC3 (win, size_y, size_x);
  size_x -= 4;

  /* are we setting a default string */
  if (str) {
    len = FUNC0 (max_width, FUNC8 (str));
    FUNC5 (s, str, len);
    s[len] = '\0';

    x = pos = 0;
    /* is the default str length greater than input field? */
    if (FUNC8 (s) > size_x) {
      tmp = FUNC14 (&s[0]);
      tmp[size_x] = '\0';
      FUNC7 (win, pos_y, pos_x, "%s", tmp);
      FUNC2 (tmp);
    } else {
      FUNC7 (win, pos_y, pos_x, "%s", s);
    }
  } else {
    s[0] = '\0';
  }

  if (enable_case)
    FUNC7 (win, size_y - 2, 1, " %s", CSENSITIVE);

  FUNC11 (win, pos_y, pos_x + x);
  FUNC12 (win);

  FUNC1 (1);
  while (quit) {
    c = FUNC10 (stdscr);
    switch (c) {
    case 1:    /* ^a   */
    case 262:  /* HOME */
      pos = x = 0;
      break;
    case 5:
    case 360:  /* END of line */
      if (FUNC8 (s) > size_x) {
        x = size_x;
        pos = FUNC8 (s) - size_x;
      } else {
        pos = 0;
        x = FUNC8 (s);
      }
      break;
    case 7:    /* ^g  */
    case 27:   /* ESC */
      pos = x = 0;
      if (str && *str == '\0')
        s[0] = '\0';
      quit = 0;
      break;
    case 9:    /* TAB   */
      if (!enable_case)
        break;
      *toggle_case = *toggle_case == 0 ? 1 : 0;
      if (*toggle_case)
        FUNC7 (win, size_y - 2, 1, " %s", CISENSITIVE);
      else if (!*toggle_case)
        FUNC7 (win, size_y - 2, 1, " %s", CSENSITIVE);
      break;
    case 21:   /* ^u */
      s[0] = '\0';
      pos = x = 0;
      break;
    case 8:    /* xterm-256color */
    case 127:
    case KEY_BACKSPACE:
      if (pos + x > 0) {
        FUNC6 (&s[(pos + x) - 1], &s[pos + x], (max_width - (pos + x)) + 1);
        if (pos <= 0)
          x--;
        else
          pos--;
      }
      break;
    case KEY_LEFT:
      if (x > 0)
        x--;
      else if (pos > 0)
        pos--;
      break;
    case KEY_RIGHT:
      if ((x + pos) < FUNC8 (s)) {
        if (x < size_x)
          x++;
        else
          pos++;
      }
      break;
    case 0x0a:
    case 0x0d:
    case KEY_ENTER:
      quit = 0;
      break;
    default:
      if (FUNC8 (s) == max_width)
        break;
      if (!FUNC4 (c))
        break;

      if (FUNC8 (s) == pos) {
        s[pos + x] = c;
        s[pos + x + 1] = '\0';
        FUNC9 (win, c);
      } else {
        FUNC6 (&s[pos + x + 1], &s[pos + x], FUNC8 (&s[pos + x]) + 1);
        s[pos + x] = c;
      }
      if ((x + pos) < max_width) {
        if (x < size_x)
          x++;
        else
          pos++;
      }
    }
    tmp = FUNC14 (&s[pos > 0 ? pos : 0]);
    tmp[FUNC0 (FUNC8 (tmp), size_x)] = '\0';
    for (i = FUNC8 (tmp); i < size_x; i++)
      FUNC7 (win, pos_y, pos_x + i, "%s", " ");
    FUNC7 (win, pos_y, pos_x, "%s", tmp);
    FUNC2 (tmp);

    FUNC11 (win, pos_y, pos_x + x);
    FUNC12 (win);
  }
  FUNC1 (0);

  return s;
}