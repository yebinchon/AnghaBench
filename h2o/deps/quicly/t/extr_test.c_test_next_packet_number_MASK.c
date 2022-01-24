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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int) ; 

__attribute__((used)) static void FUNC2(void)
{
    /* prefer lower in case the distance in both directions are equal; see https://github.com/quicwg/base-drafts/issues/674 */
    uint64_t n = FUNC1(0xc0, 8, 0x139);
    FUNC0(n == 0xc0);
    n = FUNC1(0xc0, 8, 0x140);
    FUNC0(n == 0x1c0);
    n = FUNC1(0x9b32, 16, 0xa82f30eb);
    FUNC0(n == 0xa82f9b32);

    n = FUNC1(31, 16, 65259);
    FUNC0(n == 65567);
}