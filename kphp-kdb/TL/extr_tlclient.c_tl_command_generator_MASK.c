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
struct tl_expression {struct tl_expression* next; TYPE_1__* left; } ;
struct TYPE_4__ {struct tl_expression* expr; } ;
struct TYPE_3__ {char* text; } ;

/* Variables and functions */
 size_t TL_SECTION_FUNCTIONS ; 
 TYPE_2__ compiler ; 
 char* FUNC0 (char*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 

__attribute__((used)) static char *FUNC3 (const char *text, int state) {
  static int len;
  static struct tl_expression *E;
  if (!state) {
    E = compiler.expr[TL_SECTION_FUNCTIONS].next;
    len = FUNC1 (text);
  }
  while (E != &compiler.expr[TL_SECTION_FUNCTIONS]) {
    char *name = E->left->text;
    E = E->next;
    if (!FUNC2 (name, text, len)) {
      return FUNC0 (name);
    }
  }
  return NULL;
}