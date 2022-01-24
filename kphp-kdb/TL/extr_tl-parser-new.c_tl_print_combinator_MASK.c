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
struct tl_constructor {char* real_id; char* id; int name; int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;

/* Variables and functions */
 int /*<<< orphan*/  buf ; 
 char* buf_pos ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int output_expressions ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6 (struct tl_constructor *c) {
  FUNC5 ();
  FUNC3 (c->real_id ? c->real_id : c->id, -1);
  static char _buf[10];
  FUNC1 (_buf, "#%08x", c->name);
  FUNC3 (_buf, -1);
  FUNC4 (c->left, 1);
  FUNC2 ("=", -1);
  FUNC4 (c->right, 1);
  if (output_expressions >= 1) {
    FUNC0 (stderr, "%.*s\n", buf_pos, buf);
  }
/*  if (!c->name) {
    c->name = compute_crc32 (buf, buf_pos);
  }*/
  return c->name;
}