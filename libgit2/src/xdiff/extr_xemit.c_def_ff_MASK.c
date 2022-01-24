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

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,long) ; 

__attribute__((used)) static long FUNC3(const char *rec, long len, char *buf, long sz, void *priv)
{
	(void)priv;

	if (len > 0 &&
			(FUNC0((unsigned char)*rec) || /* identifier? */
			 *rec == '_' || /* also identifier? */
			 *rec == '$')) { /* identifiers from VMS and other esoterico */
		if (len > sz)
			len = sz;
		while (0 < len && FUNC1((unsigned char)rec[len - 1]))
			len--;
		FUNC2(buf, rec, len);
		return len;
	}
	return -1;
}