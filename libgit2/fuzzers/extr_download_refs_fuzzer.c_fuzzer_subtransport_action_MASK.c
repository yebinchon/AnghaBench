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
struct fuzzer_subtransport {int /*<<< orphan*/  data; } ;
struct fuzzer_stream {int dummy; } ;
typedef  int /*<<< orphan*/  git_smart_subtransport_stream ;
typedef  int /*<<< orphan*/  git_smart_subtransport ;
typedef  char const* git_smart_service_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (struct fuzzer_stream**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(
	git_smart_subtransport_stream **out,
	git_smart_subtransport *transport,
	const char *url,
	git_smart_service_t action)
{
	struct fuzzer_subtransport *ft = (struct fuzzer_subtransport *) transport;

	FUNC0(url);
	FUNC0(action);

	return FUNC1((struct fuzzer_stream **) out, &ft->data);
}