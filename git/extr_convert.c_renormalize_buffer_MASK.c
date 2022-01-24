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
struct strbuf {char* buf; size_t len; } ;
struct index_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONV_EOL_RENORMALIZE ; 
 int FUNC0 (struct index_state const*,char const*,char const*,size_t,struct strbuf*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct index_state const*,char const*,char const*,size_t,struct strbuf*,int,int /*<<< orphan*/ *) ; 

int FUNC2(const struct index_state *istate, const char *path,
		       const char *src, size_t len, struct strbuf *dst)
{
	int ret = FUNC1(istate, path, src, len, dst, 1, NULL);
	if (ret) {
		src = dst->buf;
		len = dst->len;
	}
	return ret | FUNC0(istate, path, src, len, dst, CONV_EOL_RENORMALIZE);
}