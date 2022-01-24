#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct input_absinfo {int /*<<< orphan*/  value; } ;
struct TYPE_5__ {scalar_t__* absMap; int /*<<< orphan*/  fd; struct input_absinfo* absInfo; } ;
struct TYPE_6__ {TYPE_1__ linjs; } ;
typedef  TYPE_2__ _GLFWjoystick ;

/* Variables and functions */
 int ABS_CNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct input_absinfo*) ; 

__attribute__((used)) static void FUNC3(_GLFWjoystick* js)
{
    for (int code = 0;  code < ABS_CNT;  code++)
    {
        if (js->linjs.absMap[code] < 0)
            continue;

        struct input_absinfo* info = &js->linjs.absInfo[code];

        if (FUNC2(js->linjs.fd, FUNC0(code), info) < 0)
            continue;

        FUNC1(js, code, info->value);
    }
}