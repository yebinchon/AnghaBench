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
struct nk_context {int dummy; } ;
struct nk_color {int dummy; } ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  NK_CHART_LINES ; 
 scalar_t__ FUNC0 (struct nk_context*,int /*<<< orphan*/ ,struct nk_color,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nk_context*) ; 
 scalar_t__ FUNC2 (struct nk_context*,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nk_context*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int,unsigned short,unsigned short) ; 

__attribute__((used)) static void FUNC6(struct nk_context* nk,
                             struct nk_color color,
                             int count, unsigned short int* values)
{
    if (FUNC0(nk, NK_CHART_LINES,
                               color, FUNC3(255, 255, 255),
                               count, 0, 65535))
    {
        int i;
        for (i = 0;  i < count;  i++)
        {
            char buffer[1024];
            if (FUNC2(nk, values[i]))
            {
                FUNC5(buffer, sizeof(buffer), "#%u: %u (%0.5f) ",
                         i, values[i], values[i] / 65535.f);
                FUNC4(nk, buffer);
            }
        }

        FUNC1(nk);
    }
}