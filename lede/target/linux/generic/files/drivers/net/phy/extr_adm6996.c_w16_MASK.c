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
struct adm6996_priv {int /*<<< orphan*/  (* write ) (struct adm6996_priv*,int,int /*<<< orphan*/ ) ;} ;
typedef  enum admreg { ____Placeholder_admreg } admreg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adm6996_priv*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC1(struct adm6996_priv *priv, enum admreg reg, u16 val)
{
	priv->write(priv, reg, val);
}