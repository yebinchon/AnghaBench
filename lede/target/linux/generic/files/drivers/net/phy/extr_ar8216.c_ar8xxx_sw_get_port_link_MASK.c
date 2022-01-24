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
struct switch_port_link {int dummy; } ;
struct switch_dev {int dummy; } ;
struct ar8xxx_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ar8xxx_priv*,int,struct switch_port_link*) ; 
 struct ar8xxx_priv* FUNC1 (struct switch_dev*) ; 

int
FUNC2(struct switch_dev *dev, int port,
			struct switch_port_link *link)
{
	struct ar8xxx_priv *priv = FUNC1(dev);

	FUNC0(priv, port, link);
	return 0;
}