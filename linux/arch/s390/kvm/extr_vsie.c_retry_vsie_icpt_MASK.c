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
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct kvm_s390_sie_block {int ipa; int icptstatus; TYPE_1__ gpsw; } ;
struct vsie_page {struct kvm_s390_sie_block scb_s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vsie_page*) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct vsie_page *vsie_page)
{
	struct kvm_s390_sie_block *scb_s = &vsie_page->scb_s;
	int ilen = FUNC2(scb_s->ipa >> 8);

	/* take care of EXECUTE instructions */
	if (scb_s->icptstatus & 1) {
		ilen = (scb_s->icptstatus >> 4) & 0x6;
		if (!ilen)
			ilen = 4;
	}
	scb_s->gpsw.addr = FUNC0(scb_s->gpsw, ilen);
	FUNC1(vsie_page);
}