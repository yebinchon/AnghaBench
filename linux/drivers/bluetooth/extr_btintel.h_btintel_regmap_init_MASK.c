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
typedef  int /*<<< orphan*/  u16 ;
struct regmap {int dummy; } ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct regmap* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct regmap *FUNC1(struct hci_dev *hdev,
						 u16 opcode_read,
						 u16 opcode_write)
{
	return FUNC0(-EINVAL);
}