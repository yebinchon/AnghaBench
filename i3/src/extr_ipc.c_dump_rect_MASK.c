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
struct TYPE_3__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ Rect ;

/* Variables and functions */
 int /*<<< orphan*/  integer ; 
 int /*<<< orphan*/  map_close ; 
 int /*<<< orphan*/  map_open ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static void FUNC2(yajl_gen gen, const char *name, Rect r) {
    FUNC1(name);
    FUNC0(map_open);
    FUNC1("x");
    FUNC0(integer, r.x);
    FUNC1("y");
    FUNC0(integer, r.y);
    FUNC1("width");
    FUNC0(integer, r.width);
    FUNC1("height");
    FUNC0(integer, r.height);
    FUNC0(map_close);
}