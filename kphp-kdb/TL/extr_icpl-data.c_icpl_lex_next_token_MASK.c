#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int length; int start; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ icpl_token_t ;

/* Variables and functions */
 int FUNC0 (char const*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2 (const char *input, int *pos, icpl_token_t *T) {
  int r = FUNC0 (input, *pos, T);
  if (r < 0) {
    return r;
  }
  FUNC1 (4, "token: %.*s, type: %d\n", T->length, input + T->start, T->type);
  *pos = T->start + T->length;
  return r;
}