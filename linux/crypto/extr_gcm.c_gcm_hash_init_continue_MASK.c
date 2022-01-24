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
typedef  int /*<<< orphan*/  u32 ;
struct aead_request {scalar_t__ assoclen; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int FUNC0 (struct aead_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gcm_hash_assoc_done ; 
 int FUNC1 (struct aead_request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct aead_request *req, u32 flags)
{
	if (req->assoclen)
		return FUNC2(req, gcm_hash_assoc_done,
				       req->src, req->assoclen, flags) ?:
		       FUNC0(req, flags);

	return FUNC1(req, flags);
}