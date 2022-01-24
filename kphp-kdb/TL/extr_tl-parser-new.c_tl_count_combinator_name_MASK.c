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
struct tl_constructor {int name; int /*<<< orphan*/  right; int /*<<< orphan*/  left; scalar_t__ id; scalar_t__ real_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tl_constructor*) ; 
 int /*<<< orphan*/  buf ; 
 int /*<<< orphan*/  buf_pos ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6 (struct tl_constructor *c) {
  FUNC0 (c);
  FUNC5 ();
  FUNC3 (c->real_id ? c->real_id : c->id, -1);
  FUNC4 (c->left, 1);
  FUNC2 ("=", -1);
  FUNC4 (c->right, 1);
  //fprintf (stderr, "%.*s\n", buf_pos, buf);
  if (!c->name) {
    c->name = FUNC1 (buf, buf_pos);
  }
  return c->name;
}