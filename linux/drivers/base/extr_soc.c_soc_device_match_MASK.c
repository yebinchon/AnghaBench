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
struct soc_device_attribute {scalar_t__ soc_id; scalar_t__ revision; scalar_t__ family; scalar_t__ machine; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ early_soc_dev_attr ; 
 int /*<<< orphan*/  soc_bus_type ; 
 int FUNC1 (scalar_t__,struct soc_device_attribute const*) ; 
 int /*<<< orphan*/  soc_device_match_one ; 

const struct soc_device_attribute *FUNC2(
	const struct soc_device_attribute *matches)
{
	int ret = 0;

	if (!matches)
		return NULL;

	while (!ret) {
		if (!(matches->machine || matches->family ||
		      matches->revision || matches->soc_id))
			break;
		ret = FUNC0(&soc_bus_type, NULL, (void *)matches,
				       soc_device_match_one);
		if (ret < 0 && early_soc_dev_attr)
			ret = FUNC1(early_soc_dev_attr,
						    matches);
		if (ret < 0)
			return NULL;
		if (!ret)
			matches++;
		else
			return matches;
	}
	return NULL;
}