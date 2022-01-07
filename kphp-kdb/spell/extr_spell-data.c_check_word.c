
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int spell_checker; scalar_t__ russian; int ** stat; } ;
struct TYPE_3__ {int spell_checker; int ** stat; int name; } ;
typedef int AspellWordList ;
typedef int AspellStringEnumeration ;


 TYPE_2__** SC ;
 TYPE_1__** SS ;
 int aspell_speller_check (int ,char*,int) ;
 int aspell_speller_error_message (int ) ;
 int * aspell_speller_suggest (int ,char*,int) ;
 char* aspell_string_enumeration_next (int *) ;
 int * aspell_word_list_elements (int const*) ;
 int delete_aspell_string_enumeration (int *) ;
 int get_str_class (char const*,int) ;
 int spellers ;
 int strlen (char const*) ;
 int use_aspell_suggestion ;
 int vkprintf (int,char*,char const*,...) ;
 scalar_t__ yo_hack ;
 int * yo_hack_stat ;

int check_word (char *word, int len) {
  int i;
  for (i = 0; i < spellers; i++) {
    int r = aspell_speller_check (SC[i]->spell_checker, word, len);
    if (r >= 0) {
      SC[i]->stat[0][1]++;
      if (r) {
        SC[i]->stat[0][0]++;
        return 1;
      }
    }
  }

  if (yo_hack) {
    int j;
    yo_hack_stat[1]++;
    for (j = 0; j < len; j++) {
      if ((unsigned char) word[j] == 0xe5) {
        word[j] = 0xb8;
        for (i = 0; i < spellers; i++) {
          if (SC[i]->russian && aspell_speller_check (SC[i]->spell_checker, word, len) == 1) {
            word[j] = 0xe5;
            yo_hack_stat[0]++;
            return 1;
          }
        }
        word[j] = 0xe5;
      }
    }
  }

  if (!use_aspell_suggestion) {
    return 0;
  }
  int class = get_str_class (word, len);
  for (i = 0; i < spellers; i++) {
    SS[i]->stat[1][1]++;
    const AspellWordList *suggestions = aspell_speller_suggest (SS[i]->spell_checker, word, len);
    if (suggestions) {
      AspellStringEnumeration *elements = aspell_word_list_elements (suggestions);
      const char *w;
      int words = 0;
      while ( (w = aspell_string_enumeration_next (elements)) != ((void*)0) ) {
        vkprintf (3, "suggest: %s, %.*s (%s)\n", w, len, word, SS[i]->name);
        if (class != get_str_class (w, strlen (w))) {
          continue;
        }
        words++;
        break;
      }
      delete_aspell_string_enumeration (elements);
      if (words) {
        SS[i]->stat[1][0]++;
        return 0;
      }
    } else {
      vkprintf (3, "suggetsions = NULL. %s\n", aspell_speller_error_message (SS[i]->spell_checker));
    }
  }
  return -1;
}
