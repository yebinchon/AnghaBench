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
struct evdns_base {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdns_base*) ; 
 int /*<<< orphan*/  FUNC1 (struct evdns_base*) ; 
 int /*<<< orphan*/  FUNC2 (struct evdns_base*,char const*) ; 

void
FUNC3(struct evdns_base *base, const char *domain) {
	FUNC0(base);
	FUNC2(base, domain);
	FUNC1(base);
}