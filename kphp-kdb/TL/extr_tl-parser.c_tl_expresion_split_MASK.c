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
struct tl_token {char* text; struct tl_token* next; } ;
struct tl_expression {int dummy; } ;
struct tl_compiler {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (char*) ; 
 struct tl_token* FUNC1 (struct tl_token*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const* const) ; 
 int FUNC4 (char const* const) ; 
 char* FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (struct tl_compiler*,struct tl_expression*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 void* FUNC8 (int) ; 
 struct tl_token* FUNC9 (int) ; 

struct tl_token *FUNC10 (struct tl_compiler *C, struct tl_expression *E, const char *const expression, int remove_sugar) {
  int l = FUNC4 (expression) + 1;
  char *s = FUNC8 (l);
  FUNC3 (s, expression);

  if (remove_sugar) {
    if (FUNC6 (C, E, s) < 0) {
      return NULL;
    }
  }

  char *p;
  struct tl_token *head = NULL;
  for (p = FUNC5 (s, " "); p != NULL; p = FUNC5 (NULL, " ")) {
    struct tl_token *T = FUNC9 (sizeof (struct tl_token));

#define ZHUKOV_BYTES_HACK
#ifdef ZHUKOV_BYTES_HACK
    /* dirty hack for Zhukov request */
    if (!FUNC2 (p, "bytes")) {
      T->text = FUNC0 ("string");
    } else if (!FUNC2 (p, "Bytes")) {
      T->text = FUNC0 ("String");
    } else {
      int l = FUNC4 (p);
      if (l >= 6 && !FUNC2 (p + l - 6, ":bytes")) {
        T->text = FUNC8 (l + 2);
        FUNC3 (T->text, p);
        FUNC3 (T->text + l - 6, ":string");
      } else if (l >= 6 && !FUNC2 (p + l - 6, ":Bytes")) {
        T->text = FUNC8 (l + 2);
        FUNC3 (T->text, p);
        FUNC3 (T->text + l - 6, ":String");
      } else {
        T->text = FUNC0 (p);
      }
    }
#else
    T->text = cstr_dup (p);
#endif
    T->next = head;
    head = T;
  }
  FUNC7 (s, l);
  return FUNC1 (head);
}