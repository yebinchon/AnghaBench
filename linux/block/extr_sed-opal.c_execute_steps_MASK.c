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
struct opal_step {int dummy; } ;
struct opal_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct opal_dev*) ; 
 int FUNC1 (struct opal_dev*,struct opal_step const*,size_t) ; 
 int FUNC2 (struct opal_dev*) ; 

__attribute__((used)) static int FUNC3(struct opal_dev *dev,
			 const struct opal_step *steps, size_t n_steps)
{
	size_t state = 0;
	int error;

	/* first do a discovery0 */
	error = FUNC2(dev);
	if (error)
		return error;

	for (state = 0; state < n_steps; state++) {
		error = FUNC1(dev, &steps[state], state);
		if (error)
			goto out_error;
	}

	return 0;

out_error:
	/*
	 * For each OPAL command the first step in steps starts some sort of
	 * session. If an error occurred in the initial discovery0 or if an
	 * error occurred in the first step (and thus stopping the loop with
	 * state == 0) then there was an error before or during the attempt to
	 * start a session. Therefore we shouldn't attempt to terminate a
	 * session, as one has not yet been created.
	 */
	if (state > 0)
		FUNC0(dev);

	return error;
}