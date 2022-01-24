#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ GetExtensionsStringEXT; scalar_t__ GetExtensionsStringARB; } ;
struct TYPE_4__ {TYPE_1__ wgl; } ;

/* Variables and functions */
 int GLFW_FALSE ; 
 TYPE_2__ _glfw ; 
 int FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 () ; 

__attribute__((used)) static int FUNC4(const char* extension)
{
    const char* extensions = NULL;

    if (_glfw.wgl.GetExtensionsStringARB)
        extensions = FUNC2(FUNC1());
    else if (_glfw.wgl.GetExtensionsStringEXT)
        extensions = FUNC3();

    if (!extensions)
        return GLFW_FALSE;

    return FUNC0(extension, extensions);
}