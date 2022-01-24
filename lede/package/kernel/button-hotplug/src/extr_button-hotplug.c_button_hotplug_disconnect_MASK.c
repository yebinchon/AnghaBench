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
struct input_handle {struct bh_priv* private; } ;
struct bh_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct input_handle*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_handle*) ; 
 int /*<<< orphan*/  FUNC2 (struct bh_priv*) ; 

__attribute__((used)) static void FUNC3(struct input_handle *handle)
{
	struct bh_priv *priv = handle->private;

	FUNC0(handle);
	FUNC1(handle);

	FUNC2(priv);
}