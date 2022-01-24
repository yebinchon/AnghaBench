#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;
struct TYPE_3__ {int id; int rev; int num_i2c_devs; int /*<<< orphan*/ * gpiod_table; int /*<<< orphan*/  num_spi_devs; int /*<<< orphan*/  spi_devs; int /*<<< orphan*/ * i2c_devs; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int) ; 
 TYPE_1__* gf_mods ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wm5102_gpiod_table ; 
 int /*<<< orphan*/  wm5102_reva_gpiod_table ; 
 int /*<<< orphan*/  wm8994_gpiod_table ; 

__attribute__((used)) static int FUNC8(struct i2c_client *i2c,
			       const struct i2c_device_id *i2c_id)
{
	int ret, i, j, id, rev;

	ret = FUNC6(i2c, 0);
	if (ret < 0) {
		FUNC1(&i2c->dev, "Failed to read ID: %d\n", ret);
		return ret;
	}

	id = (ret & 0xfe) >> 2;
	rev = ret & 0x3;
	for (i = 0; i < FUNC0(gf_mods); i++)
		if (id == gf_mods[i].id && (gf_mods[i].rev == 0xff ||
					    rev == gf_mods[i].rev))
			break;

	FUNC4(&wm5102_reva_gpiod_table);
	FUNC4(&wm5102_gpiod_table);
	FUNC4(&wm8994_gpiod_table);

	if (i < FUNC0(gf_mods)) {
		FUNC2(&i2c->dev, "%s revision %d\n",
			 gf_mods[i].name, rev + 1);

		for (j = 0; j < gf_mods[i].num_i2c_devs; j++) {
			if (!FUNC5(i2c->adapter,
					    &(gf_mods[i].i2c_devs[j])))
				FUNC1(&i2c->dev,
					"Failed to register dev: %d\n", ret);
		}

		FUNC7(gf_mods[i].spi_devs,
					gf_mods[i].num_spi_devs);

		if (gf_mods[i].gpiod_table)
			FUNC4(gf_mods[i].gpiod_table);
	} else {
		FUNC3(&i2c->dev, "Unknown module ID 0x%x revision %d\n",
			 id, rev + 1);
	}

	return 0;
}