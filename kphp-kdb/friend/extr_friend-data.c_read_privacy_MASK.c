#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* right; struct TYPE_5__* left; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ privacy_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  privacy_nodes ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int tot_privacy_len ; 
 TYPE_1__* FUNC6 (int) ; 

__attribute__((used)) static privacy_t *FUNC7 (void) {
  char *ptr = FUNC5 (1);
  if (!ptr) {
    FUNC2 (stderr, "Unexpected end of file in read_privacy\n");
    return 0;
  }
  char c = ptr[0];
  FUNC4 (1);
  FUNC0 (c == 2 || c == 3);
  if (c == 2) {
    return 0;
  }
  ptr = FUNC5 (16);
  if (!ptr) {
    FUNC2 (stderr, "Unexpected end of file in read_privacy\n");
    return 0;
  }
  int l = FUNC1 ((privacy_t *)(ptr - 2 * sizeof (privacy_t *)));
  privacy_t *T = FUNC6 (l);
  ptr = FUNC5 (l - 2 * sizeof (privacy_t *));
  if (!ptr) {
    FUNC2 (stderr, "Unexpected end of file in read_privacy\n");
  }
  FUNC3 (&T->x, ptr, l - 2 * sizeof (privacy_t *));
  FUNC4 (l - 2 * sizeof (privacy_t *));
  T->left = FUNC7 ();
  T->right = FUNC7 ();
  FUNC0 (l == FUNC1 (T));
  tot_privacy_len += l;
  privacy_nodes++;
  return T;
}