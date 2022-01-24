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
typedef  int /*<<< orphan*/  u8 ;
struct tpm_chip {int /*<<< orphan*/  dev; } ;
struct tpm_atmel_priv {scalar_t__ iobase; } ;

/* Variables and functions */
 struct tpm_atmel_priv* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static u8 FUNC2(struct tpm_chip *chip)
{
	struct tpm_atmel_priv *priv = FUNC0(&chip->dev);

	return FUNC1(priv->iobase + 1);
}