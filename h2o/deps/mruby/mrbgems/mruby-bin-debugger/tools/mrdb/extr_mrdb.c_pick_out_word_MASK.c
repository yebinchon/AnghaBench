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
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 char* FUNC1 (char*,char) ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (char*,char*) ; 

__attribute__((used)) static char*
FUNC4(mrb_state *mrb, char **pp)
{
  char *ps;

  for (ps=*pp; FUNC0(*ps); ps++) ;
  if (*ps == '\0') {
    return NULL;
  }

  if (*ps == '\"' || *ps == '\'') {
    *pp = FUNC1(ps+1, *ps);
    if (*pp) (*pp)++;
  }
  else {
    *pp = FUNC3(ps, " \t");
  }

  if (!*pp) {
    *pp = ps + FUNC2(ps);
  }

  if (**pp != '\0') {
    **pp = '\0';
    (*pp)++;
  }

  return ps;
}