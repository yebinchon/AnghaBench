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
struct tl_scheme_object {int dummy; } ;
struct tl_buffer {char* buff; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct tl_buffer*,struct tl_scheme_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct tl_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tl_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct tl_buffer*) ; 

void FUNC5 (FILE *f, struct tl_scheme_object *O) {
  struct tl_buffer b;
  FUNC4 (&b);
  FUNC1 (&b, O);
  FUNC2 (&b, 0);
  FUNC0 (f, "%s", b.buff);
  FUNC3 (&b);
}