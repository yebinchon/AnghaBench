
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct speller {int russian; struct speller* next; void* name; void* jargon; void* code; int spell_checker; int * config; } ;
struct TYPE_3__ {char* code; char* jargon; char* name; } ;
typedef int AspellDictInfoList ;
typedef int AspellDictInfoEnumeration ;
typedef TYPE_1__ AspellDictInfo ;
typedef int AspellConfig ;
typedef int AspellCanHaveError ;


 int REG_EXTENDED ;
 int REG_ICASE ;
 int REG_NEWLINE ;
 struct speller** SC ;
 struct speller** SS ;
 TYPE_1__* aspell_dict_info_enumeration_next (int *) ;
 int * aspell_dict_info_list_elements (int *) ;
 int aspell_error_message (int *) ;
 scalar_t__ aspell_error_number (int *) ;
 int delete_aspell_can_have_error (int *) ;
 int delete_aspell_config (int *) ;
 int delete_aspell_dict_info_enumeration (int *) ;
 int email_regexp ;
 int exit (int) ;
 int * get_aspell_dict_info_list (int *) ;
 int init_is_letter () ;
 int kprintf (char*,int ,...) ;
 int* l_case ;
 int * new_aspell_config () ;
 int * new_aspell_speller (int *) ;
 int re_email ;
 int re_url ;
 int spellers ;
 int strcmp (void*,char*) ;
 int strncmp (char*,char*,int) ;
 int to_aspell_speller (int *) ;
 int url_regexp ;
 scalar_t__ use_aspell_suggestion ;
 int vk_aspell_config_replace (int *,char*,char*) ;
 int vk_regcomp (int *,int ,int) ;
 int vkprintf (int,char*,char*,...) ;
 void* zmalloc (int) ;
 struct speller* zmalloc0 (int) ;
 void* zstrdup (char*) ;

void spell_init (void) {
  int r = vk_regcomp (&re_email, email_regexp, REG_EXTENDED | REG_ICASE | REG_NEWLINE);
  if (r) {
    kprintf ("regcomp (%s) return error code %d\n.", email_regexp, r);
    exit (1);
  }
  r = vk_regcomp (&re_url, url_regexp, REG_EXTENDED | REG_ICASE | REG_NEWLINE);
  if (r) {
    kprintf ("regcomp (%s) return error code %d\n.", email_regexp, r);
    exit (1);
  }

  struct speller *head = ((void*)0);
  spellers = 0;

  init_is_letter ();
  l_case[0xa8] = l_case[0xb8] = 0xb8;

  const AspellDictInfo *entry;
  AspellConfig *config = new_aspell_config ();
  AspellDictInfoList *dlist = get_aspell_dict_info_list (config);
  AspellDictInfoEnumeration *dels = aspell_dict_info_list_elements (dlist);
  while ((entry = aspell_dict_info_enumeration_next (dels)) != 0) {
    struct speller *w;
    for (w = head; w != ((void*)0); w = w->next) {
      if (!strcmp (w->code, entry->code) && !strcmp (w->jargon, entry->jargon)) {
        break;
      }
    }
    if (w != ((void*)0)) {
      vkprintf (1, "skip duplicate dictionary (code:%s, jargon:%s)\n", entry->code, entry->jargon);
      continue;
    }

    AspellConfig *c = new_aspell_config ();
    if (!vk_aspell_config_replace (c, "lang", entry->code) ||
        !vk_aspell_config_replace (c, "jargon", entry->jargon) ||
        !vk_aspell_config_replace (c, "encoding", "CP1251")) {
      delete_aspell_config (c);
      continue;
    }
    if (use_aspell_suggestion && (!vk_aspell_config_replace (c, "filter", "url") ||
                                  !vk_aspell_config_replace (c, "sug-mode", "fast"))) {
      delete_aspell_config (c);
      continue;
    }
    AspellCanHaveError *possible_err = new_aspell_speller (c);
    if (aspell_error_number (possible_err) != 0) {
      kprintf ("%s\n", aspell_error_message (possible_err));
      delete_aspell_can_have_error (possible_err);
      delete_aspell_config (c);
      continue;
    } else {
      struct speller *P = zmalloc0 (sizeof (struct speller));
      P->config = c;
      P->spell_checker = to_aspell_speller (possible_err);
      P->name = zstrdup (entry->name);
      P->code = zstrdup (entry->code);
      P->jargon = zstrdup (entry->jargon);
      P->russian = !strncmp (entry->name, "ru", 2);
      P->next = head;
      head = P;
      spellers++;
      vkprintf (1, "user dict: %s\n", P->name);
    }
  }
  delete_aspell_dict_info_enumeration (dels);
  delete_aspell_config (config);
  SC = zmalloc (spellers * sizeof (struct speller));
  SS = zmalloc (spellers * sizeof (struct speller));
  int i = 0;
  while (head != ((void*)0)) {
    SC[i] = SS[i] = head;
    head = head->next;
    i++;
  }
}
