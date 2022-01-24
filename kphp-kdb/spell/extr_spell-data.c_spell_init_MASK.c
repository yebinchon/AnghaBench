#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct speller {int russian; struct speller* next; void* name; void* jargon; void* code; int /*<<< orphan*/  spell_checker; int /*<<< orphan*/ * config; } ;
struct TYPE_3__ {char* code; char* jargon; char* name; } ;
typedef  int /*<<< orphan*/  AspellDictInfoList ;
typedef  int /*<<< orphan*/  AspellDictInfoEnumeration ;
typedef  TYPE_1__ AspellDictInfo ;
typedef  int /*<<< orphan*/  AspellConfig ;
typedef  int /*<<< orphan*/  AspellCanHaveError ;

/* Variables and functions */
 int REG_EXTENDED ; 
 int REG_ICASE ; 
 int REG_NEWLINE ; 
 struct speller** SC ; 
 struct speller** SS ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  email_regexp ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,...) ; 
 int* l_case ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  re_email ; 
 int /*<<< orphan*/  re_url ; 
 int spellers ; 
 int /*<<< orphan*/  FUNC13 (void*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  url_regexp ; 
 scalar_t__ use_aspell_suggestion ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int,char*,char*,...) ; 
 void* FUNC19 (int) ; 
 struct speller* FUNC20 (int) ; 
 void* FUNC21 (char*) ; 

void FUNC22 (void) {
  int r = FUNC17 (&re_email, email_regexp, REG_EXTENDED | REG_ICASE | REG_NEWLINE);
  if (r) {
    FUNC10 ("regcomp (%s) return error code %d\n.", email_regexp, r);
    FUNC7 (1);
  }
  r = FUNC17 (&re_url, url_regexp, REG_EXTENDED | REG_ICASE | REG_NEWLINE);
  if (r) {
    FUNC10 ("regcomp (%s) return error code %d\n.", email_regexp, r);
    FUNC7 (1);
  }

  struct speller *head = NULL;
  spellers = 0;

  FUNC9 ();
  l_case[0xa8] = l_case[0xb8] = 0xb8;

  const AspellDictInfo *entry;
  AspellConfig *config = FUNC11 ();
  AspellDictInfoList *dlist = FUNC8 (config);
  AspellDictInfoEnumeration *dels = FUNC1 (dlist);
  while ((entry = FUNC0 (dels)) != 0) {
    struct speller *w;
    for (w = head; w != NULL; w = w->next) {
      if (!FUNC13 (w->code, entry->code) && !FUNC13 (w->jargon, entry->jargon)) {
        break;
      }
    }
    if (w != NULL) {
      FUNC18 (1, "skip duplicate dictionary (code:%s, jargon:%s)\n", entry->code, entry->jargon);
      continue;
    }

    AspellConfig *c = FUNC11 ();
    if (!FUNC16 (c, "lang", entry->code) ||
        !FUNC16 (c, "jargon", entry->jargon) ||
        !FUNC16 (c, "encoding", "CP1251")) {
      FUNC5 (c);
      continue;
    }
    if (use_aspell_suggestion && (!FUNC16 (c, "filter", "url") ||
                                  !FUNC16 (c, "sug-mode", "fast"))) {
      FUNC5 (c);
      continue;
    }
    AspellCanHaveError *possible_err = FUNC12 (c);
    if (FUNC3 (possible_err) != 0) {
      FUNC10 ("%s\n", FUNC2 (possible_err));
      FUNC4 (possible_err);
      FUNC5 (c);
      continue;
    } else {
      struct speller *P = FUNC20 (sizeof (struct speller));
      P->config = c;
      P->spell_checker = FUNC15 (possible_err);
      P->name = FUNC21 (entry->name);
      P->code = FUNC21 (entry->code);
      P->jargon = FUNC21 (entry->jargon);
      P->russian = !FUNC14 (entry->name, "ru", 2);
      P->next = head;
      head = P;
      spellers++;
      FUNC18 (1, "user dict: %s\n", P->name);
    }
  }
  FUNC6 (dels);
  FUNC5 (config);
  SC = FUNC19 (spellers * sizeof (struct speller));
  SS = FUNC19 (spellers * sizeof (struct speller));
  int i = 0;
  while (head != NULL) {
    SC[i] = SS[i] = head;
    head = head->next;
    i++;
  }
}