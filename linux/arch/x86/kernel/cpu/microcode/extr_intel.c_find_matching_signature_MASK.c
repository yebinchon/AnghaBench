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
struct microcode_header_intel {int /*<<< orphan*/  pf; int /*<<< orphan*/  sig; } ;
struct extended_sigtable {int count; } ;
struct extended_signature {int /*<<< orphan*/  pf; int /*<<< orphan*/  sig; } ;

/* Variables and functions */
 int EXT_HEADER_SIZE ; 
 scalar_t__ MC_HEADER_SIZE ; 
 scalar_t__ FUNC0 (unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct microcode_header_intel*) ; 
 scalar_t__ FUNC2 (struct microcode_header_intel*) ; 

__attribute__((used)) static int FUNC3(void *mc, unsigned int csig, int cpf)
{
	struct microcode_header_intel *mc_hdr = mc;
	struct extended_sigtable *ext_hdr;
	struct extended_signature *ext_sig;
	int i;

	if (FUNC0(csig, cpf, mc_hdr->sig, mc_hdr->pf))
		return 1;

	/* Look for ext. headers: */
	if (FUNC2(mc_hdr) <= FUNC1(mc_hdr) + MC_HEADER_SIZE)
		return 0;

	ext_hdr = mc + FUNC1(mc_hdr) + MC_HEADER_SIZE;
	ext_sig = (void *)ext_hdr + EXT_HEADER_SIZE;

	for (i = 0; i < ext_hdr->count; i++) {
		if (FUNC0(csig, cpf, ext_sig->sig, ext_sig->pf))
			return 1;
		ext_sig++;
	}
	return 0;
}