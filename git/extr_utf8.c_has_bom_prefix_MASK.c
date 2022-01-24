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
 int /*<<< orphan*/  FUNC0 (char const*,char const*,size_t) ; 

__attribute__((used)) static int FUNC1(const char *data, size_t len,
			  const char *bom, size_t bom_len)
{
	return data && bom && (len >= bom_len) && !FUNC0(data, bom, bom_len);
}