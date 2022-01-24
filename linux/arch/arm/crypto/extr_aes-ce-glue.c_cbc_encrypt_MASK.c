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
struct skcipher_walk {int dummy; } ;
struct skcipher_request {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct skcipher_request*,struct skcipher_walk*) ; 
 int FUNC1 (struct skcipher_walk*,struct skcipher_request*,int) ; 

__attribute__((used)) static int FUNC2(struct skcipher_request *req)
{
	struct skcipher_walk walk;
	int err;

	err = FUNC1(&walk, req, false);
	if (err)
		return err;
	return FUNC0(req, &walk);
}