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
struct bufferevent {int dummy; } ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
#define  BIO_CTRL_DUP 133 
#define  BIO_CTRL_FLUSH 132 
#define  BIO_CTRL_GET_CLOSE 131 
#define  BIO_CTRL_PENDING 130 
#define  BIO_CTRL_SET_CLOSE 129 
#define  BIO_CTRL_WPENDING 128 
 struct bufferevent* FUNC0 (int /*<<< orphan*/ *) ; 
 long FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC4 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static long
FUNC6(BIO *b, int cmd, long num, void *ptr)
{
	struct bufferevent *bufev = FUNC0(b);
	long ret = 1;

	switch (cmd) {
	case BIO_CTRL_GET_CLOSE:
		ret = FUNC1(b);
		break;
	case BIO_CTRL_SET_CLOSE:
		FUNC2(b, (int)num);
		break;
	case BIO_CTRL_PENDING:
		ret = FUNC5(FUNC3(bufev)) != 0;
		break;
	case BIO_CTRL_WPENDING:
		ret = FUNC5(FUNC4(bufev)) != 0;
		break;
	/* XXXX These two are given a special-case treatment because
	 * of cargo-cultism.  I should come up with a better reason. */
	case BIO_CTRL_DUP:
	case BIO_CTRL_FLUSH:
		ret = 1;
		break;
	default:
		ret = 0;
		break;
	}
	return ret;
}