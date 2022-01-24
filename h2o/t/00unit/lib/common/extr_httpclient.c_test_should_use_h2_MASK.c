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
typedef  int int8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int*) ; 

__attribute__((used)) static void FUNC2(void)
{
    int8_t counter = -1;
    int i;
    for (i = 0; i != 110; ++i) {
        int use_h2 = FUNC1(5, &counter);
        switch (counter) {
        case 0:
        case 20:
        case 40:
        case 60:
        case 80:
            FUNC0(use_h2 == 1);
            break;
        default:
            FUNC0(use_h2 == 0);
            break;
        }
    }

    counter = 0;
    for (i = 0; i != 110; ++i) {
        int use_h2 = FUNC1(7, &counter);
        switch (counter) {
        case 0:
        case 15:
        case 29:
        case 43:
        case 58:
        case 72:
        case 86:
            FUNC0(use_h2 == 1);
            break;
        default:
            FUNC0(use_h2 == 0);
            break;
        }
    }

    counter = 0;
    for (i = 0; i != 110; ++i) {
        int use_h2 = FUNC1(93, &counter);
        switch (counter) {
        case 1:
        case 15:
        case 29:
        case 43:
        case 58:
        case 72:
        case 86:
            FUNC0(use_h2 == 0);
            break;
        default:
            FUNC0(use_h2 == 1);
            break;
        }
    }

    counter = 0;
    for (i = 0; i != 110; ++i) {
        int use_h2 = FUNC1(0, &counter);
        FUNC0(use_h2 == 0);
    }

    counter = 0;
    for (i = 0; i != 110; ++i) {
        int use_h2 = FUNC1(100, &counter);
        FUNC0(use_h2 == 1);
    }
}