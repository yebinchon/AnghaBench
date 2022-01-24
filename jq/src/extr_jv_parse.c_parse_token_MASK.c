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
struct jv_parser {int stackpos; void** stack; void* next; } ;
typedef  char* pfunc ;

/* Variables and functions */
 int /*<<< orphan*/  JV_KIND_ARRAY ; 
 int /*<<< orphan*/  JV_KIND_OBJECT ; 
 int /*<<< orphan*/  JV_KIND_STRING ; 
 int MAX_PARSING_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 () ; 
 void* FUNC2 (void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 void* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 void* FUNC11 (void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC12 (struct jv_parser*,void*) ; 

__attribute__((used)) static pfunc FUNC13(struct jv_parser* p, char ch) {
  switch (ch) {
  case '[':
    if (p->stackpos >= MAX_PARSING_DEPTH) return "Exceeds depth limit for parsing";
    if (FUNC8(p->next)) return "Expected separator between values";
    FUNC12(p, FUNC1());
    break;

  case '{':
    if (p->stackpos >= MAX_PARSING_DEPTH) return "Exceeds depth limit for parsing";
    if (FUNC8(p->next)) return "Expected separator between values";
    FUNC12(p, FUNC9());
    break;

  case ':':
    if (!FUNC8(p->next))
      return "Expected string key before ':'";
    if (p->stackpos == 0 || FUNC6(p->stack[p->stackpos-1]) != JV_KIND_OBJECT)
      return "':' not as part of an object";
    if (FUNC6(p->next) != JV_KIND_STRING)
      return "Object keys must be strings";
    FUNC12(p, p->next);
    p->next = FUNC7();
    break;

  case ',':
    if (!FUNC8(p->next))
      return "Expected value before ','";
    if (p->stackpos == 0)
      return "',' not as part of an object or array";
    if (FUNC6(p->stack[p->stackpos-1]) == JV_KIND_ARRAY) {
      p->stack[p->stackpos-1] = FUNC2(p->stack[p->stackpos-1], p->next);
      p->next = FUNC7();
    } else if (FUNC6(p->stack[p->stackpos-1]) == JV_KIND_STRING) {
      FUNC0(p->stackpos > 1 && FUNC6(p->stack[p->stackpos-2]) == JV_KIND_OBJECT);
      p->stack[p->stackpos-2] = FUNC11(p->stack[p->stackpos-2],
                                              p->stack[p->stackpos-1], p->next);
      p->stackpos--;
      p->next = FUNC7();
    } else {
      // this case hits on input like {"a", "b"}
      return "Objects must consist of key:value pairs";
    }
    break;

  case ']':
    if (p->stackpos == 0 || FUNC6(p->stack[p->stackpos-1]) != JV_KIND_ARRAY)
      return "Unmatched ']'";
    if (FUNC8(p->next)) {
      p->stack[p->stackpos-1] = FUNC2(p->stack[p->stackpos-1], p->next);
      p->next = FUNC7();
    } else {
      if (FUNC3(FUNC4(p->stack[p->stackpos-1])) != 0) {
        // this case hits on input like [1,2,3,]
        return "Expected another array element";
      }
    }
    FUNC5(p->next);
    p->next = p->stack[--p->stackpos];
    break;

  case '}':
    if (p->stackpos == 0)
      return "Unmatched '}'";
    if (FUNC8(p->next)) {
      if (FUNC6(p->stack[p->stackpos-1]) != JV_KIND_STRING)
        return "Objects must consist of key:value pairs";
      FUNC0(p->stackpos > 1 && FUNC6(p->stack[p->stackpos-2]) == JV_KIND_OBJECT);
      p->stack[p->stackpos-2] = FUNC11(p->stack[p->stackpos-2],
                                              p->stack[p->stackpos-1], p->next);
      p->stackpos--;
      p->next = FUNC7();
    } else {
      if (FUNC6(p->stack[p->stackpos-1]) != JV_KIND_OBJECT)
        return "Unmatched '}'";
      if (FUNC10(FUNC4(p->stack[p->stackpos-1])) != 0)
        return "Expected another key-value pair";
    }
    FUNC5(p->next);
    p->next = p->stack[--p->stackpos];
    break;
  }
  return 0;
}