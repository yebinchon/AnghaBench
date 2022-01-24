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
struct basic_test_data {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdns_base*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct evdns_base*,char*) ; 
 struct evdns_base* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct evdns_base*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct basic_test_data *data = arg;
	struct evdns_base *dns_base;

	dns_base = FUNC2(data->base, 0);
	FUNC4(dns_base);

	FUNC4(!FUNC3(dns_base, "so-rcvbuf", "10240"));
	FUNC4(!FUNC3(dns_base, "so-sndbuf", "10240"));

	/* actually check SO_RCVBUF/SO_SNDBUF not fails */
	FUNC4(!FUNC1(dns_base, "127.0.0.1"));

end:
	if (dns_base)
		FUNC0(dns_base, 0);
}