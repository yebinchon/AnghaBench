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
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC1(const struct soc_device_attribute *attr,
				 const struct soc_device_attribute *match)
{
	if (match->machine &&
	    (!attr->machine || !FUNC0(match->machine, attr->machine)))
		return 0;

	if (match->family &&
	    (!attr->family || !FUNC0(match->family, attr->family)))
		return 0;

	if (match->revision &&
	    (!attr->revision || !FUNC0(match->revision, attr->revision)))
		return 0;

	if (match->soc_id &&
	    (!attr->soc_id || !FUNC0(match->soc_id, attr->soc_id)))
		return 0;

	return 1;
}