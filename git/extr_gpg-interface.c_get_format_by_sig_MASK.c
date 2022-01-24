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
struct gpg_format {scalar_t__* sigs; } ;

/* Variables and functions */
 int FUNC0 (struct gpg_format*) ; 
 struct gpg_format* gpg_format ; 
 scalar_t__ FUNC1 (char const*,scalar_t__) ; 

__attribute__((used)) static struct gpg_format *FUNC2(const char *sig)
{
	int i, j;

	for (i = 0; i < FUNC0(gpg_format); i++)
		for (j = 0; gpg_format[i].sigs[j]; j++)
			if (FUNC1(sig, gpg_format[i].sigs[j]))
				return gpg_format + i;
	return NULL;
}