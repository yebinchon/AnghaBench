
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int res ;
typedef int dyn_mark_t ;


 int assert (int) ;
 int check_word (char*,int) ;
 int * check_word_stat ;
 int dyn_mark (int ) ;
 int dyn_release (int ) ;
 int filter_re (char*,int *) ;
 int get_notword (char*) ;
 int get_word (char*) ;
 int memset (int*,int ,int) ;
 int my_lc_str (char*,char*,int) ;
 int re_email ;
 int re_url ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int vkprintf (int,char*,...) ;
 char* zmalloc (scalar_t__) ;

int spell_check (char *original_text, int res[3], int destroy_original) {
  static char buff[16384];
  memset (res, 0, sizeof (res));
  char *text;
  dyn_mark_t m;
  if (!destroy_original) {
    dyn_mark (m);
    text = zmalloc (strlen (original_text) + 1);
    strcpy (text, original_text);
  } else {
    text = original_text;
  }
  vkprintf (3, "Before filter: %s\n", text);
  filter_re (text, &re_email);
  filter_re (text, &re_url);
  vkprintf (3, "After filter: %s\n", text);

  while (*text) {
    int wl = get_notword (text);
    if (wl < 0) {
      break;
    }
    text += wl;
    wl = get_word (text);
    if (!wl) {
      continue;
    }
    assert (wl > 0 && wl < 16383);
    my_lc_str (buff, text, wl);
    if (wl >= 3) {
      int l = my_lc_str (buff, text, wl);
      int r = check_word (buff, l);
      vkprintf (3, "[%d] check_word: %.*s\n", r, l, buff);
      if (r >= 0) {
        check_word_stat[1]++;
        if (r) {
          res[0]++;
          check_word_stat[0]++;
        } else {
          res[1]++;
        }
      } else {
        res[2]++;
      }
    }
    text += wl;
  }
  if (!destroy_original) {
    dyn_release (m);
  }
  return 0;
}
