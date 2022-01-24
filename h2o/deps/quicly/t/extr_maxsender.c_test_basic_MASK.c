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
typedef  int /*<<< orphan*/  quicly_maxsender_t ;
typedef  int /*<<< orphan*/  quicly_maxsender_sent_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int,int) ; 

__attribute__((used)) static void FUNC6(void)
{
    quicly_maxsender_t m;
    quicly_maxsender_sent_t ackargs;

    FUNC2(&m, 100);

    /* basic checks */
    FUNC0(!FUNC5(&m, 0, 100, 512));
    FUNC0(FUNC5(&m, 0, 100, 1024));
    FUNC0(!FUNC5(&m, 99, 100, 0));
    FUNC0(FUNC5(&m, 100, 100, 0));

    /* scenario */
    FUNC0(!FUNC5(&m, 24, 100, 768));
    FUNC0(FUNC5(&m, 25, 100, 768));
    FUNC4(&m, 125, &ackargs);
    FUNC0(!FUNC5(&m, 49, 100, 768));
    FUNC0(FUNC5(&m, 50, 100, 768));
    FUNC1(&m, &ackargs);
    FUNC0(!FUNC5(&m, 49, 100, 768));
    FUNC0(FUNC5(&m, 50, 100, 768));
    FUNC4(&m, 150, &ackargs);
    FUNC0(!FUNC5(&m, 74, 100, 768));
    FUNC3(&m, &ackargs);
    FUNC0(FUNC5(&m, 74, 100, 768));
}