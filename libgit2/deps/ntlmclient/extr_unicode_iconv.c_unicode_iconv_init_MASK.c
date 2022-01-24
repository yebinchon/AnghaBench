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
struct TYPE_3__ {scalar_t__ utf8_to_16; scalar_t__ utf16_to_8; int /*<<< orphan*/  ntlm; } ;
typedef  TYPE_1__ ntlm_unicode_ctx ;
typedef  scalar_t__ iconv_t ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (scalar_t__) ; 

__attribute__((used)) static inline bool FUNC3(ntlm_unicode_ctx *ctx)
{
	if (ctx->utf8_to_16 != (iconv_t)-1 || ctx->utf16_to_8 != (iconv_t)-1)
		return true;

	if ((ctx->utf8_to_16 = FUNC0("UTF-16LE", "UTF-8")) == (iconv_t)-1 ||
		(ctx->utf16_to_8 = FUNC0("UTF-8", "UTF-16LE")) == (iconv_t)-1) {
		if (errno == EINVAL)
			FUNC1(ctx->ntlm,
				"iconv does not support UTF8 <-> UTF16 conversion");
		else
			FUNC1(ctx->ntlm, FUNC2(errno));

		return false;
	}

	return true;
}