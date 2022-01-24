#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  offset; } ;
struct TYPE_5__ {void* offset; void* page; } ;
struct TYPE_4__ {void* offset; void* page; } ;
struct ablkcipher_walk {TYPE_3__ out; TYPE_2__ dst; TYPE_3__ in; TYPE_1__ src; } ;
struct ablkcipher_request {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (TYPE_3__*) ; 

__attribute__((used)) static inline int FUNC2(struct ablkcipher_request *req,
				       struct ablkcipher_walk *walk)
{
	walk->src.page = FUNC1(&walk->in);
	walk->src.offset = FUNC0(walk->in.offset);
	walk->dst.page = FUNC1(&walk->out);
	walk->dst.offset = FUNC0(walk->out.offset);

	return 0;
}