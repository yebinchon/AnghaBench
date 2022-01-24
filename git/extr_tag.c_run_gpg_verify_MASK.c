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
struct signature_check {int dummy; } ;
typedef  int /*<<< orphan*/  sigc ;

/* Variables and functions */
 unsigned int GPG_VERIFY_OMIT_STATUS ; 
 unsigned int GPG_VERIFY_VERBOSE ; 
 int FUNC0 (char const*,size_t,char const*,unsigned long,struct signature_check*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct signature_check*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC3 (char const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct signature_check*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct signature_check*) ; 
 int /*<<< orphan*/  FUNC6 (int,char const*,size_t) ; 

__attribute__((used)) static int FUNC7(const char *buf, unsigned long size, unsigned flags)
{
	struct signature_check sigc;
	size_t payload_size;
	int ret;

	FUNC2(&sigc, 0, sizeof(sigc));

	payload_size = FUNC3(buf, size);

	if (size == payload_size) {
		if (flags & GPG_VERIFY_VERBOSE)
			FUNC6(1, buf, payload_size);
		return FUNC1("no signature found");
	}

	ret = FUNC0(buf, payload_size, buf + payload_size,
				size - payload_size, &sigc);

	if (!(flags & GPG_VERIFY_OMIT_STATUS))
		FUNC4(&sigc, flags);

	FUNC5(&sigc);
	return ret;
}