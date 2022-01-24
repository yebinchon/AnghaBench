#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int size; } ;
struct TYPE_7__ {TYPE_1__ keys; } ;
typedef  TYPE_2__ h2o_http2_casper_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_2__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(void)
{
    h2o_http2_casper_t *casper;
    casper = FUNC1(13, 6);

    FUNC4(FUNC3(casper, FUNC0("/index.html"), 0) == 0);
    FUNC4(FUNC3(casper, FUNC0("/index.html"), 1) == 0);
    FUNC4(casper->keys.size == 1);
    FUNC4(FUNC3(casper, FUNC0("/index.html"), 0) == 1);
    FUNC4(FUNC3(casper, FUNC0("/index.html"), 1) == 1);
    FUNC4(casper->keys.size == 1);

    FUNC2(casper);
}