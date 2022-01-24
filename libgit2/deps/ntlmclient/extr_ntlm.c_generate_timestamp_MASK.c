#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int timestamp; } ;
typedef  TYPE_1__ ntlm_client ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC1(ntlm_client *ntlm)
{
	if (!ntlm->timestamp)
		ntlm->timestamp = (FUNC0(NULL) + 11644473600) * 10000000;

	return true;
}