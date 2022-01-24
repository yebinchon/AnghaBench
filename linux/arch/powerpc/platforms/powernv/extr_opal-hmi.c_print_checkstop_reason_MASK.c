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
typedef  int uint8_t ;
struct TYPE_3__ {int xstop_type; } ;
struct TYPE_4__ {TYPE_1__ xstop_error; } ;
struct OpalHMIEvent {TYPE_2__ u; } ;

/* Variables and functions */
#define  CHECKSTOP_TYPE_CORE 130 
#define  CHECKSTOP_TYPE_NPU 129 
#define  CHECKSTOP_TYPE_NX 128 
 int /*<<< orphan*/  FUNC0 (char const*,struct OpalHMIEvent*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,struct OpalHMIEvent*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,struct OpalHMIEvent*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

__attribute__((used)) static void FUNC4(const char *level,
					struct OpalHMIEvent *hmi_evt)
{
	uint8_t type = hmi_evt->u.xstop_error.xstop_type;
	switch (type) {
	case CHECKSTOP_TYPE_CORE:
		FUNC0(level, hmi_evt);
		break;
	case CHECKSTOP_TYPE_NX:
		FUNC2(level, hmi_evt);
		break;
	case CHECKSTOP_TYPE_NPU:
		FUNC1(level, hmi_evt);
		break;
	default:
		FUNC3("%s	Unknown Malfunction Alert of type %d\n",
		       level, type);
		break;
	}
}