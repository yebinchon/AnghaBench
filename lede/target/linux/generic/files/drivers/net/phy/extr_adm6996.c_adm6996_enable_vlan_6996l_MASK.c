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
struct adm6996_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADM_MAC_CLONE ; 
 int /*<<< orphan*/  ADM_SYSC3 ; 
 int /*<<< orphan*/  ADM_TBV ; 
 int /*<<< orphan*/  FUNC0 (struct adm6996_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adm6996_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct adm6996_priv *priv)
{
	u16 reg;

	reg = FUNC0(priv, ADM_SYSC3);
	reg |= ADM_TBV;
	reg |= ADM_MAC_CLONE;
	FUNC1(priv, ADM_SYSC3, reg);
}