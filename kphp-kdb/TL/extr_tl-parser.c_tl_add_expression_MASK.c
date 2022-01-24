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
struct tl_expression {int section; struct tl_expression* prev; struct tl_expression* next; int /*<<< orphan*/  text; int /*<<< orphan*/  flag_builtin; } ;
struct tl_compiler {struct tl_expression* expr; int /*<<< orphan*/  flag_reading_builtin_schema; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,char const*) ; 
 struct tl_expression* FUNC3 (int) ; 

__attribute__((used)) static void FUNC4 (struct tl_compiler *C, int section, const char *text) {
  FUNC2 (3, "tl_add_expression (section:%d, text:%s)\n", section, text);
  FUNC0 (section >= 0 && section < 2);
  struct tl_expression *E = FUNC3 (sizeof (struct tl_expression));
  E->section = section;
  E->flag_builtin = C->flag_reading_builtin_schema;
  struct tl_expression *L = &C->expr[section];
  E->text = FUNC1 (text);
  struct tl_expression *A = L->prev;
  A->next = E; E->prev = A;
  E->next = L; L->prev = E;
}