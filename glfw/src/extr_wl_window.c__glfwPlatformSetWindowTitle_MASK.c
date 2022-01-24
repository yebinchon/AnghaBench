#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ toplevel; } ;
struct TYPE_6__ {TYPE_1__ xdg; scalar_t__ title; } ;
struct TYPE_7__ {TYPE_2__ wl; } ;
typedef  TYPE_3__ _GLFWwindow ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char const*) ; 

void FUNC3(_GLFWwindow* window, const char* title)
{
    if (window->wl.title)
        FUNC1(window->wl.title);
    window->wl.title = FUNC0(title);
    if (window->wl.xdg.toplevel)
        FUNC2(window->wl.xdg.toplevel, title);
}