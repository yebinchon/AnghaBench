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
struct ar8xxx_priv {int dummy; } ;
struct ar8327_led_entry {int shift; int /*<<< orphan*/  reg; } ;
typedef  enum ar8327_led_pattern { ____Placeholder_ar8327_led_pattern } ar8327_led_pattern ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ar8327_led_entry* ar8327_led_map ; 
 int /*<<< orphan*/  FUNC1 (struct ar8xxx_priv*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC2(struct ar8xxx_priv *priv, unsigned int led_num,
		       enum ar8327_led_pattern pattern)
{
	const struct ar8327_led_entry *entry;

	entry = &ar8327_led_map[led_num];
	FUNC1(priv, FUNC0(entry->reg),
		   (3 << entry->shift), pattern << entry->shift);
}