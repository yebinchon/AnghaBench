#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  yajl_gen ;
struct TYPE_3__ {int /*<<< orphan*/  left; int /*<<< orphan*/  bottom; int /*<<< orphan*/  right; int /*<<< orphan*/  top; int /*<<< orphan*/  inner; } ;
typedef  TYPE_1__ gaps_t ;

/* Variables and functions */
 int /*<<< orphan*/  integer ; 
 int /*<<< orphan*/  map_close ; 
 int /*<<< orphan*/  map_open ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static void FUNC2(yajl_gen gen, const char *name, gaps_t gaps) {
    FUNC1(name);
    FUNC0(map_open);
    FUNC1("inner");
    FUNC0(integer, gaps.inner);

    // TODO: the i3ipc Python modules recognize gaps, but only inner/outer
    // This is currently here to preserve compatibility with that
    FUNC1("outer");
    FUNC0(integer, gaps.top);

    FUNC1("top");
    FUNC0(integer, gaps.top);
    FUNC1("right");
    FUNC0(integer, gaps.right);
    FUNC1("bottom");
    FUNC0(integer, gaps.bottom);
    FUNC1("left");
    FUNC0(integer, gaps.left);
    FUNC0(map_close);
}