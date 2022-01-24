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
struct hv_24x7_event_data {int dummy; } ;
struct attribute {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct attribute* FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 char* FUNC2 (struct hv_24x7_event_data*,unsigned int) ; 
 char* FUNC3 (struct hv_24x7_event_data*,int*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int,unsigned int) ; 

__attribute__((used)) static struct attribute *FUNC7(unsigned ix,
				       struct hv_24x7_event_data *event,
				       unsigned domain,
				       int nonce)
{
	int event_name_len;
	char *ev_name, *a_ev_name, *val;
	struct attribute *attr;

	if (!FUNC1(domain)) {
		FUNC6("catalog event %u has invalid domain %u\n",
				ix, domain);
		return NULL;
	}

	val = FUNC2(event, domain);
	if (!val)
		return NULL;

	ev_name = FUNC3(event, &event_name_len);
	if (!nonce)
		a_ev_name = FUNC4(GFP_KERNEL, "%.*s",
				(int)event_name_len, ev_name);
	else
		a_ev_name = FUNC4(GFP_KERNEL, "%.*s__%d",
				(int)event_name_len, ev_name, nonce);

	if (!a_ev_name)
		goto out_val;

	attr = FUNC0(a_ev_name, val);
	if (!attr)
		goto out_name;

	return attr;
out_name:
	FUNC5(a_ev_name);
out_val:
	FUNC5(val);
	return NULL;
}