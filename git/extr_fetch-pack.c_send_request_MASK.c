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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct fetch_pack_args {scalar_t__ stateless_rpc; } ;

/* Variables and functions */
 int /*<<< orphan*/  LARGE_PACKET_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct fetch_pack_args *args,
			 int fd, struct strbuf *buf)
{
	if (args->stateless_rpc) {
		FUNC3(fd, -1, buf->buf, buf->len, LARGE_PACKET_MAX);
		FUNC2(fd);
	} else {
		if (FUNC4(fd, buf->buf, buf->len) < 0)
			FUNC1(FUNC0("unable to write to remote"));
	}
}