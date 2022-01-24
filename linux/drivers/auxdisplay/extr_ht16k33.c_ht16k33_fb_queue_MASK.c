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
struct ht16k33_fbdev {int refresh_rate; int /*<<< orphan*/  work; } ;
struct ht16k33_priv {struct ht16k33_fbdev fbdev; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ht16k33_priv *priv)
{
	struct ht16k33_fbdev *fbdev = &priv->fbdev;

	FUNC1(&fbdev->work,
			      FUNC0(HZ / fbdev->refresh_rate));
}