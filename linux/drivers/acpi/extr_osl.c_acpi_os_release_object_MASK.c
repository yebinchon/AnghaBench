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
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_cache_t ;

/* Variables and functions */
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*) ; 

acpi_status FUNC1(acpi_cache_t * cache, void *object)
{
	FUNC0(cache, object);
	return (AE_OK);
}