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
typedef  int u64 ;
struct TYPE_2__ {int /*<<< orphan*/ * word; } ;
struct kvm_s390_gisa {TYPE_1__ u64; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static inline void FUNC2(struct kvm_s390_gisa *gisa)
{
	u64 word, _word;

	do {
		word = FUNC0(gisa->u64.word[0]);
		_word = word & ~(0xffUL << 24);
	} while (FUNC1(&gisa->u64.word[0], word, _word) != word);
}