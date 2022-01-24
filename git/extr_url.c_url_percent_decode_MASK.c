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
struct strbuf {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct strbuf*,int /*<<< orphan*/ ) ; 

char *FUNC2(const char *encoded)
{
	struct strbuf out = STRBUF_INIT;
	return FUNC1(&encoded, FUNC0(encoded), NULL, &out, 0);
}