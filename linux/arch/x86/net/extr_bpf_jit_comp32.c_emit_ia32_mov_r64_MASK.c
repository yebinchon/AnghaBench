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
typedef  int /*<<< orphan*/  u8 ;
struct bpf_prog_aux {int /*<<< orphan*/  verifier_zext; } ;

/* Variables and functions */
 int /*<<< orphan*/  dst_hi ; 
 int /*<<< orphan*/  dst_lo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  src_hi ; 
 int /*<<< orphan*/  src_lo ; 

__attribute__((used)) static inline void FUNC2(const bool is64, const u8 dst[],
				     const u8 src[], bool dstk,
				     bool sstk, u8 **pprog,
				     const struct bpf_prog_aux *aux)
{
	FUNC1(dst_lo, src_lo, dstk, sstk, pprog);
	if (is64)
		/* complete 8 byte move */
		FUNC1(dst_hi, src_hi, dstk, sstk, pprog);
	else if (!aux->verifier_zext)
		/* zero out high 4 bytes */
		FUNC0(dst_hi, 0, dstk, pprog);
}