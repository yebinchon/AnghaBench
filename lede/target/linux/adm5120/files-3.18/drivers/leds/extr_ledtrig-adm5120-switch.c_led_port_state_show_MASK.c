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
struct port_state {char* name; } ;
struct led_classdev {struct port_state* trigger_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct port_state*) ; 
 struct led_classdev* FUNC1 (struct device*) ; 
 struct port_state* port_states ; 
 scalar_t__ FUNC2 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct led_classdev *led_cdev = FUNC1(dev);
	struct port_state *state = led_cdev->trigger_data;
	int len = 0;
	int i;

	*buf = '\0';
	for (i = 0; i < FUNC0(port_states); i++) {
		if (&port_states[i] == state)
			len += FUNC2(buf+len, "[%s] ", port_states[i].name);
		else
			len += FUNC2(buf+len, "%s ", port_states[i].name);
	}
	len += FUNC2(buf+len, "\n");

	return len;
}