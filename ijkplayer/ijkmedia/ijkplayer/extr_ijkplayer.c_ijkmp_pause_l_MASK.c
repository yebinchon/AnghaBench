#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ffplayer; int /*<<< orphan*/  mp_state; } ;
typedef  TYPE_1__ IjkMediaPlayer ;

/* Variables and functions */
 int /*<<< orphan*/  FFP_REQ_PAUSE ; 
 int /*<<< orphan*/  FFP_REQ_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(IjkMediaPlayer *mp)
{
    FUNC1(mp);

    FUNC0(FUNC4(mp->mp_state));

    FUNC3(mp->ffplayer, FFP_REQ_START);
    FUNC3(mp->ffplayer, FFP_REQ_PAUSE);
    FUNC2(mp->ffplayer, FFP_REQ_PAUSE);

    return 0;
}