#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dyn_mark_t ;
struct TYPE_5__ {int /*<<< orphan*/  name; int /*<<< orphan*/  spell_checker; } ;
struct TYPE_4__ {int offset; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ AspellToken ;
typedef  int /*<<< orphan*/  AspellDocumentChecker ;
typedef  int /*<<< orphan*/  AspellCanHaveError ;

/* Variables and functions */
 TYPE_3__** SC ; 
 TYPE_1__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int spellers ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int FUNC10 (char const*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 char* FUNC13 (int) ; 

int FUNC14 (const char *text, int res[3]) {
  int l = FUNC10 (text);
  res[0] = res[1] = res[2] = 0;
  dyn_mark_t m;
  FUNC5 (m);
  char *a = FUNC13 (l + 3), *b = FUNC13 (l + 3);
  FUNC9 (a, text);
  int i, words = 0;
  for (i = 0; i < spellers; i++) {
    words = 0;
    FUNC12 (3, "%s (%s)\n",  a, SC[i]->name);
    char *p = b;
    AspellCanHaveError *ret = FUNC8 (SC[i]->spell_checker);
    if (FUNC2 (ret) != 0) {
      FUNC12 (1, "%s\n",FUNC3 (ret));
      return -1;
    }
    AspellDocumentChecker *checker = FUNC11 (ret);
    FUNC1 (checker, a, -1);
    while (1) {
      AspellToken token = FUNC0 (checker);
      if (!token.len) {
        break;
      }
      FUNC12 (3, "%.*s (%s)\n", token.len, a + token.offset, SC[i]->name);
      FUNC7 (p, a + token.offset, token.len);
      p += token.len;
      *p++ = ' ';
      words++;
    }
    FUNC12 (3, "words = %d\n", words);
    *p = 0;
    p = a; a = b; b = p;
    FUNC4 (checker);
    if (!words) {
      break;
    }
  }
  FUNC6 (m);
  res[0] = l;
  res[1] = words;
  return 0;
}