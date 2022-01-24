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
struct repository {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int FUNC0 (struct repository*,char const*,int,struct strbuf*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct strbuf*,size_t*) ; 

__attribute__((used)) static char *FUNC2(struct repository *r,
				    const char **string, int *len)
{
	struct strbuf buf = STRBUF_INIT;
	int ret = FUNC0(r, *string, *len, &buf, 0);

	if (ret == *len) {
		size_t size;
		*string = FUNC1(&buf, &size);
		*len = size;
		return (char *)*string;
	}

	return NULL;
}