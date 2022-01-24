#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* ptr; scalar_t__ type; scalar_t__ len; } ;
struct TYPE_4__ {TYPE_1__ lex; } ;

/* Variables and functions */
 scalar_t__ lex_error ; 
 scalar_t__ lex_none ; 
 scalar_t__ FUNC0 (char*,void*,scalar_t__) ; 
 TYPE_2__ parse ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 

int FUNC5 (char *s) {
  if (!parse.lex.ptr || parse.lex.ptr == (void *)-1 || parse.lex.type == lex_error || parse.lex.type == lex_none || parse.lex.len != FUNC4 (s) || FUNC0 (s, parse.lex.ptr, parse.lex.len)) {
    static char buf[1000];
    FUNC3 (buf, "Expected %s", s);
    FUNC1 (buf);
    return -1;
  } else {
    FUNC2 ();
  }
  return 1;
}