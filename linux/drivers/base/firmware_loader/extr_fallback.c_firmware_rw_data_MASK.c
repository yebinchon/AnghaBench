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
struct fw_priv {char* data; } ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 

__attribute__((used)) static void FUNC1(struct fw_priv *fw_priv, char *buffer,
			   loff_t offset, size_t count, bool read)
{
	if (read)
		FUNC0(buffer, fw_priv->data + offset, count);
	else
		FUNC0(fw_priv->data + offset, buffer, count);
}