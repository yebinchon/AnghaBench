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
struct cs2000_priv {unsigned long saved_rate; unsigned long saved_parent_rate; } ;

/* Variables and functions */
 int FUNC0 (struct cs2000_priv*,unsigned long) ; 
 int FUNC1 (struct cs2000_priv*,int) ; 
 int FUNC2 (struct cs2000_priv*,int,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct cs2000_priv *priv, int ch,
			     unsigned long rate, unsigned long parent_rate)

{
	int ret;

	ret = FUNC0(priv, parent_rate);
	if (ret < 0)
		return ret;

	ret = FUNC2(priv, ch, parent_rate, rate);
	if (ret < 0)
		return ret;

	ret = FUNC1(priv, ch);
	if (ret < 0)
		return ret;

	priv->saved_rate	= rate;
	priv->saved_parent_rate	= parent_rate;

	return 0;
}