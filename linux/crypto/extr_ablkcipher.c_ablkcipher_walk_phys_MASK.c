#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ablkcipher_walk {int /*<<< orphan*/  blocksize; } ;
struct TYPE_2__ {int /*<<< orphan*/  tfm; } ;
struct ablkcipher_request {TYPE_1__ base; } ;

/* Variables and functions */
 int FUNC0 (struct ablkcipher_request*,struct ablkcipher_walk*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct ablkcipher_request *req,
			 struct ablkcipher_walk *walk)
{
	walk->blocksize = FUNC1(req->base.tfm);
	return FUNC0(req, walk);
}