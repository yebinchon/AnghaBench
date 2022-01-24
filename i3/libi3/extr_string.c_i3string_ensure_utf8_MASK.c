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
struct TYPE_3__ {int /*<<< orphan*/ * utf8; int /*<<< orphan*/  num_bytes; int /*<<< orphan*/  num_glyphs; int /*<<< orphan*/  ucs2; } ;
typedef  TYPE_1__ i3String ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(i3String *str) {
    if (str->utf8 != NULL)
        return;
    if ((str->utf8 = FUNC0(str->ucs2, str->num_glyphs)) != NULL)
        str->num_bytes = FUNC1(str->utf8);
}