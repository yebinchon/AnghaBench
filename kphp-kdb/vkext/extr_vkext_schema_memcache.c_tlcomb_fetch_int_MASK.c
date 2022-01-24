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
typedef  int /*<<< orphan*/  zval ;
struct tl_tree {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TLUNI_NEXT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 () ; 
 int FUNC4 () ; 

void *FUNC5 (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  int a = FUNC4 ();
#ifdef VLOG
  fprintf (stderr, "!!!%d (0x%08x). error %s\n", a, a, tl_parse_error () ? tl_parse_error () : "none");
#endif
  if (FUNC3 ()) { return 0; }
  FUNC0 (*arr);
  FUNC1 (*arr, a);
  TLUNI_NEXT;
}