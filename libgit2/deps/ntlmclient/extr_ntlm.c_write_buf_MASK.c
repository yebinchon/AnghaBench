#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ntlm_client ;
struct TYPE_3__ {size_t len; size_t pos; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_1__ ntlm_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static inline bool FUNC2(
	ntlm_client *ntlm,
	ntlm_buf *out,
	const unsigned char *buf,
	size_t len)
{
	if (out->len - out->pos < len) {
		FUNC1(ntlm, "out of buffer space");
		return false;
	}

	FUNC0(&out->buf[out->pos], buf, len);
	out->pos += len;
	return true;
}