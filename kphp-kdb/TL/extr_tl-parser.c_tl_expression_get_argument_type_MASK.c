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
struct tl_expression {struct tl_token* left; } ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

char *FUNC2 (struct tl_expression *E, char *arg_name) {
  if (E == NULL || arg_name == NULL) {
    return NULL;
  }
  struct tl_token *T = E->left;
  if (T == NULL) {
    return NULL;
  }
  int l = FUNC0 (arg_name);
  T = T->next;
  while (T != NULL) {
    if (!FUNC1 (T->text, arg_name, l) && T->text[l] == ':') {
      return T->text + (l + 1);
    }
    T = T->next;
  }
  return NULL;
}