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
struct pefile_context {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct pefile_context*,void const*,size_t) ; 
 int /*<<< orphan*/  mscode_decoder ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,unsigned int,void const*) ; 

int FUNC2(void *_ctx, const void *content_data, size_t data_len,
		 size_t asn1hdrlen)
{
	struct pefile_context *ctx = _ctx;

	content_data -= asn1hdrlen;
	data_len += asn1hdrlen;
	FUNC1("Data: %zu [%*ph]\n", data_len, (unsigned)(data_len),
		 content_data);

	return FUNC0(&mscode_decoder, ctx, content_data, data_len);
}