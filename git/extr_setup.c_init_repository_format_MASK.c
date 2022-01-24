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
struct repository_format {int dummy; } ;
typedef  int /*<<< orphan*/  fresh ;

/* Variables and functions */
 struct repository_format REPOSITORY_FORMAT_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct repository_format*,struct repository_format const*,int) ; 

__attribute__((used)) static void FUNC1(struct repository_format *format)
{
	const struct repository_format fresh = REPOSITORY_FORMAT_INIT;

	FUNC0(format, &fresh, sizeof(fresh));
}