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
 unsigned int FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,float*) ; 

float FUNC3(const char *json, const char *jsonEnd)
{
	char cValue[256];
	float fValue = 0.0f;
	unsigned int np = FUNC0(json, jsonEnd);

	if (np)
		return (float)(np - 1);

	if (!FUNC1(json, jsonEnd, cValue, 256))
		return 0.0f;

	FUNC2(cValue, "%f", &fValue);

	return fValue;
}