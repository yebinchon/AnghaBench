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
struct s3c_adc_client {int result; int /*<<< orphan*/ * convert_cb; int /*<<< orphan*/ * wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int FUNC1 (struct s3c_adc_client*,unsigned int,int) ; 
 int /*<<< orphan*/ * s3c_convert_done ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  wake ; 

int FUNC3(struct s3c_adc_client *client, unsigned int ch)
{
	FUNC0(wake);
	int ret;

	client->convert_cb = s3c_convert_done;
	client->wait = &wake;
	client->result = -1;

	ret = FUNC1(client, ch, 1);
	if (ret < 0)
		goto err;

	ret = FUNC2(wake, client->result >= 0, HZ / 2);
	if (client->result < 0) {
		ret = -ETIMEDOUT;
		goto err;
	}

	client->convert_cb = NULL;
	return client->result;

err:
	return ret;
}