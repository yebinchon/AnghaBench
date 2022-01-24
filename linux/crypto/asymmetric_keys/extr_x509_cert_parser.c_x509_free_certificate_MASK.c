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
struct x509_certificate {struct x509_certificate* skid; struct x509_certificate* id; struct x509_certificate* subject; struct x509_certificate* issuer; int /*<<< orphan*/  sig; int /*<<< orphan*/  pub; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct x509_certificate*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct x509_certificate *cert)
{
	if (cert) {
		FUNC1(cert->pub);
		FUNC2(cert->sig);
		FUNC0(cert->issuer);
		FUNC0(cert->subject);
		FUNC0(cert->id);
		FUNC0(cert->skid);
		FUNC0(cert);
	}
}