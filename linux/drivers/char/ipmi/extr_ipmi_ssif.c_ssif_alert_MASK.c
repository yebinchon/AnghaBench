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
struct ssif_info {int waiting_alert; int got_alert; scalar_t__ curr_msg; int /*<<< orphan*/  retry_timer; } ;
struct i2c_client {int dummy; } ;
typedef  enum i2c_alert_protocol { ____Placeholder_i2c_alert_protocol } i2c_alert_protocol ;

/* Variables and functions */
 int I2C_PROTOCOL_SMBUS_ALERT ; 
 int /*<<< orphan*/  alerts ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ssif_info* FUNC1 (struct i2c_client*) ; 
 unsigned long* FUNC2 (struct ssif_info*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct ssif_info*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct ssif_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ssif_info*) ; 

__attribute__((used)) static void FUNC6(struct i2c_client *client, enum i2c_alert_protocol type,
		       unsigned int data)
{
	struct ssif_info *ssif_info = FUNC1(client);
	unsigned long oflags, *flags;
	bool do_get = false;

	if (type != I2C_PROTOCOL_SMBUS_ALERT)
		return;

	FUNC4(ssif_info, alerts);

	flags = FUNC2(ssif_info, &oflags);
	if (ssif_info->waiting_alert) {
		ssif_info->waiting_alert = false;
		FUNC0(&ssif_info->retry_timer);
		do_get = true;
	} else if (ssif_info->curr_msg) {
		ssif_info->got_alert = true;
	}
	FUNC3(ssif_info, flags);
	if (do_get)
		FUNC5(ssif_info);
}