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
struct bufferevent_openssl {size_t n_errors; unsigned long* errors; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 struct bufferevent_openssl* FUNC2 (struct bufferevent*) ; 

unsigned long
FUNC3(struct bufferevent *bev)
{
	unsigned long err = 0;
	struct bufferevent_openssl *bev_ssl;
	FUNC0(bev);
	bev_ssl = FUNC2(bev);
	if (bev_ssl && bev_ssl->n_errors) {
		err = bev_ssl->errors[--bev_ssl->n_errors];
	}
	FUNC1(bev);
	return err;
}