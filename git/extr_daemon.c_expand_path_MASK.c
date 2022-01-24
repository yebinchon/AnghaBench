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
struct hostinfo {int /*<<< orphan*/  tcp_port; int /*<<< orphan*/  hostname; } ;
struct expand_path_context {int /*<<< orphan*/  directory; struct hostinfo* hostinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hostinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct hostinfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC4(struct strbuf *sb, const char *placeholder, void *ctx)
{
	struct expand_path_context *context = ctx;
	struct hostinfo *hi = context->hostinfo;

	switch (placeholder[0]) {
	case 'H':
		FUNC2(sb, &hi->hostname);
		return 1;
	case 'C':
		if (placeholder[1] == 'H') {
			FUNC3(sb, FUNC0(hi));
			return 2;
		}
		break;
	case 'I':
		if (placeholder[1] == 'P') {
			FUNC3(sb, FUNC1(hi));
			return 2;
		}
		break;
	case 'P':
		FUNC2(sb, &hi->tcp_port);
		return 1;
	case 'D':
		FUNC3(sb, context->directory);
		return 1;
	}
	return 0;
}