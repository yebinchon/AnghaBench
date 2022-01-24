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
typedef  enum sideband_type { ____Placeholder_sideband_type } sideband_type ;

/* Variables and functions */
 int /*<<< orphan*/  LARGE_PACKET_MAX ; 
#define  SIDEBAND_PRIMARY 128 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,int,int /*<<< orphan*/ ,struct strbuf*,int*) ; 
 int FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 

int FUNC3(const char *me, int in_stream, int out)
{
	char buf[LARGE_PACKET_MAX + 1];
	int len;
	struct strbuf scratch = STRBUF_INIT;
	enum sideband_type sideband_type;

	while (1) {
		len = FUNC1(in_stream, NULL, NULL, buf, LARGE_PACKET_MAX,
				  0);
		if (!FUNC0(me, buf, len, 0, &scratch,
					  &sideband_type))
			continue;
		switch (sideband_type) {
		case SIDEBAND_PRIMARY:
			FUNC2(out, buf + 1, len - 1);
			break;
		default: /* errors: message already written */
			return sideband_type;
		}
	}
}