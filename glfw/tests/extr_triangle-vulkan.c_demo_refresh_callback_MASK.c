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
struct demo {int dummy; } ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct demo*) ; 
 struct demo* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(GLFWwindow* window) {
    struct demo* demo = FUNC1(window);
    FUNC0(demo);
}