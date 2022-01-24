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
struct pcrypt_request {int dummy; } ;
struct padata_priv {int /*<<< orphan*/  info; } ;
struct aead_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct padata_priv*) ; 
 struct pcrypt_request* FUNC2 (struct padata_priv*) ; 
 struct aead_request* FUNC3 (struct pcrypt_request*) ; 

__attribute__((used)) static void FUNC4(struct padata_priv *padata)
{
	struct pcrypt_request *preq = FUNC2(padata);
	struct aead_request *req = FUNC3(preq);

	padata->info = FUNC0(req);

	if (padata->info == -EINPROGRESS)
		return;

	FUNC1(padata);
}