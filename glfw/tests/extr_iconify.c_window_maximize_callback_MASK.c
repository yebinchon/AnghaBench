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
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 double FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,double,char*) ; 

__attribute__((used)) static void FUNC2(GLFWwindow* window, int maximized)
{
    FUNC1("%0.2f Window %s\n",
           FUNC0(),
           maximized ? "maximized" : "unmaximized");
}