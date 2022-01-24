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
struct jv_parser {void* last_seen; int /*<<< orphan*/  stacklen; void* path; void* output; void* next; } ;
typedef  char* pfunc ;
typedef  int /*<<< orphan*/  jv_kind ;
typedef  void* jv ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  JV_KIND_NULL ; 
 int /*<<< orphan*/  JV_KIND_NUMBER ; 
 int /*<<< orphan*/  JV_KIND_STRING ; 
 void* JV_LAST_COLON ; 
 void* JV_LAST_COMMA ; 
 void* JV_LAST_NONE ; 
 void* JV_LAST_OPEN_ARRAY ; 
 void* JV_LAST_OPEN_OBJECT ; 
 void* JV_LAST_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 () ; 
 void* FUNC3 (void*,void*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (void*,int /*<<< orphan*/ ,void*) ; 
 void* FUNC6 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 void* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 void* FUNC12 () ; 
 void* FUNC13 (int) ; 
 int FUNC14 (void*) ; 
 void* FUNC15 () ; 
 void* FUNC16 () ; 

__attribute__((used)) static pfunc FUNC17(struct jv_parser* p, char ch) {
  jv_kind k;
  jv last;

  switch (ch) {
  case '[':
    if (FUNC11(p->next))
      return "Expected a separator between values";
    p->path = FUNC3(p->path, FUNC13(0)); // push
    p->last_seen = JV_LAST_OPEN_ARRAY;
    p->stacklen++;
    break;

  case '{':
    if (p->last_seen == JV_LAST_VALUE)
      return "Expected a separator between values";
    // Push object key: null, since we don't know it yet
    p->path = FUNC3(p->path, FUNC12()); // push
    p->last_seen = JV_LAST_OPEN_OBJECT;
    p->stacklen++;
    break;

  case ':':
    last = FUNC10();
    if (p->stacklen == 0 || FUNC9(last = FUNC4(FUNC7(p->path), p->stacklen - 1)) == JV_KIND_NUMBER) {
      FUNC8(last);
      return "':' not as part of an object";
    }
    FUNC8(last);
    if (!FUNC11(p->next) || p->last_seen == JV_LAST_NONE)
      return "Expected string key before ':'";
    if (FUNC9(p->next) != JV_KIND_STRING)
      return "Object keys must be strings";
    if (p->last_seen != JV_LAST_VALUE)
      return "':' should follow a key";
    p->last_seen = JV_LAST_COLON;
    p->path = FUNC5(p->path, p->stacklen - 1, p->next);
    p->next = FUNC10();
    break;

  case ',':
    if (p->last_seen != JV_LAST_VALUE)
      return "Expected value before ','";
    if (p->stacklen == 0)
      return "',' not as part of an object or array";
    last = FUNC4(FUNC7(p->path), p->stacklen - 1);
    k = FUNC9(last);
    if (k == JV_KIND_NUMBER) {
      int idx = FUNC14(last);

      if (FUNC11(p->next)) {
        p->output = FUNC0(FUNC7(p->path), p->next);
        p->next = FUNC10();
      }
      p->path = FUNC5(p->path, p->stacklen - 1, FUNC13(idx + 1));
      p->last_seen = JV_LAST_COMMA;
    } else if (k == JV_KIND_STRING) {
      if (FUNC11(p->next)) {
        p->output = FUNC0(FUNC7(p->path), p->next);
        p->next = FUNC10();
      }
      p->path = FUNC5(p->path, p->stacklen - 1, FUNC16()); // ready for another name:value pair
      p->last_seen = JV_LAST_COMMA;
    } else {
      FUNC1(k == JV_KIND_NULL);
      // this case hits on input like {,}
      // make sure to handle input like {"a", "b"} and {"a":, ...}
      FUNC8(last);
      return "Objects must consist of key:value pairs";
    }
    FUNC8(last);
    break;

  case ']':
    if (p->stacklen == 0)
      return "Unmatched ']' at the top-level";
    if (p->last_seen == JV_LAST_COMMA)
      return "Expected another array element";
    if (p->last_seen == JV_LAST_OPEN_ARRAY)
      FUNC1(!FUNC11(p->next));

    last = FUNC4(FUNC7(p->path), p->stacklen - 1);
    k = FUNC9(last);
    FUNC8(last);

    if (k != JV_KIND_NUMBER)
      return "Unmatched ']' in the middle of an object";
    if (FUNC11(p->next)) {
      p->output = FUNC0(FUNC7(p->path), p->next, FUNC16());
      p->next = FUNC10();
    } else if (p->last_seen != JV_LAST_OPEN_ARRAY) {
      p->output = FUNC0(FUNC7(p->path));
    }

    p->path = FUNC6(p->path, 0, --(p->stacklen)); // pop
    //assert(!jv_is_valid(p->next));
    FUNC8(p->next);
    p->next = FUNC10();

    if (p->last_seen == JV_LAST_OPEN_ARRAY)
      p->output = FUNC0(FUNC7(p->path), FUNC2()); // Empty arrays are leaves

    if (p->stacklen == 0)
      p->last_seen = JV_LAST_NONE;
    else
      p->last_seen = JV_LAST_VALUE;
    break;

  case '}':
    if (p->stacklen == 0)
      return "Unmatched '}' at the top-level";
    if (p->last_seen == JV_LAST_COMMA)
      return "Expected another key:value pair";
    if (p->last_seen == JV_LAST_OPEN_OBJECT)
      FUNC1(!FUNC11(p->next));

    last = FUNC4(FUNC7(p->path), p->stacklen - 1);
    k = FUNC9(last);
    FUNC8(last);
    if (k == JV_KIND_NUMBER)
      return "Unmatched '}' in the middle of an array";

    if (FUNC11(p->next)) {
      if (k != JV_KIND_STRING)
        return "Objects must consist of key:value pairs";
      p->output = FUNC0(FUNC7(p->path), p->next, FUNC16());
      p->next = FUNC10();
    } else {
      // Perhaps {"a":[]}
      if (p->last_seen == JV_LAST_COLON)
        // Looks like {"a":}
        return "Missing value in key:value pair";
      if (p->last_seen == JV_LAST_COMMA)
        // Looks like {"a":0,}
        return "Expected another key-value pair";
      if (p->last_seen == JV_LAST_OPEN_ARRAY)
        return "Unmatched '}' in the middle of an array";
      if (p->last_seen != JV_LAST_VALUE && p->last_seen != JV_LAST_OPEN_OBJECT)
        return "Unmatched '}'";
      if (p->last_seen != JV_LAST_OPEN_OBJECT)
        p->output = FUNC0(FUNC7(p->path));
    }
    p->path = FUNC6(p->path, 0, --(p->stacklen)); // pop
    FUNC8(p->next);
    p->next = FUNC10();

    if (p->last_seen == JV_LAST_OPEN_OBJECT)
      p->output = FUNC0(FUNC7(p->path), FUNC15()); // Empty arrays are leaves

    if (p->stacklen == 0)
      p->last_seen = JV_LAST_NONE;
    else
      p->last_seen = JV_LAST_VALUE;
    break;
  }
  return 0;
}