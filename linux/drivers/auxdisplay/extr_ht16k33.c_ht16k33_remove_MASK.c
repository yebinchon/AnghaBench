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
struct i2c_client {int dummy; } ;
struct ht16k33_fbdev {scalar_t__ buffer; int /*<<< orphan*/  info; int /*<<< orphan*/  work; } ;
struct ht16k33_priv {struct ht16k33_fbdev fbdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 struct ht16k33_priv* FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct ht16k33_priv *priv = FUNC3(client);
	struct ht16k33_fbdev *fbdev = &priv->fbdev;

	FUNC0(&fbdev->work);
	FUNC4(fbdev->info);
	FUNC1(fbdev->info);
	FUNC2((unsigned long) fbdev->buffer);

	return 0;
}