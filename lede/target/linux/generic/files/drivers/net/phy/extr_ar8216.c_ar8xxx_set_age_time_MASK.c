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
typedef  int u32 ;
struct ar8xxx_priv {int /*<<< orphan*/  arl_age_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR8216_ATU_CTRL_AGE_TIME ; 
 int AR8216_ATU_CTRL_AGE_TIME_S ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ar8xxx_priv*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void
FUNC2(struct ar8xxx_priv *priv, int reg)
{
	u32 age_time = FUNC0(priv->arl_age_time);
	FUNC1(priv, reg, AR8216_ATU_CTRL_AGE_TIME, age_time << AR8216_ATU_CTRL_AGE_TIME_S);
}