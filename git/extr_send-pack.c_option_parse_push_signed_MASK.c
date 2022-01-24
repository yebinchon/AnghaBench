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
struct option {int /*<<< orphan*/  long_name; scalar_t__ value; } ;

/* Variables and functions */
 int SEND_PACK_PUSH_CERT_ALWAYS ; 
 int SEND_PACK_PUSH_CERT_IF_ASKED ; 
 int SEND_PACK_PUSH_CERT_NEVER ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

int FUNC3(const struct option *opt,
			     const char *arg, int unset)
{
	if (unset) {
		*(int *)(opt->value) = SEND_PACK_PUSH_CERT_NEVER;
		return 0;
	}
	switch (FUNC1(arg)) {
	case 1:
		*(int *)(opt->value) = SEND_PACK_PUSH_CERT_ALWAYS;
		return 0;
	case 0:
		*(int *)(opt->value) = SEND_PACK_PUSH_CERT_NEVER;
		return 0;
	}
	if (!FUNC2("if-asked", arg)) {
		*(int *)(opt->value) = SEND_PACK_PUSH_CERT_IF_ASKED;
		return 0;
	}
	FUNC0("bad %s argument: %s", opt->long_name, arg);
}