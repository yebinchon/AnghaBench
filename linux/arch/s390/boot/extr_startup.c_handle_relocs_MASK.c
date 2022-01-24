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
struct TYPE_6__ {scalar_t__ dynsym_start; scalar_t__ rela_dyn_end; scalar_t__ rela_dyn_start; } ;
struct TYPE_5__ {unsigned long r_offset; unsigned long r_addend; int /*<<< orphan*/  r_info; } ;
struct TYPE_4__ {scalar_t__ st_shndx; scalar_t__ st_value; } ;
typedef  TYPE_1__ Elf64_Sym ;
typedef  TYPE_2__ Elf64_Rela ;
typedef  unsigned long Elf64_Addr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SHN_UNDEF ; 
 int FUNC2 (int,void*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_3__ vmlinux ; 

__attribute__((used)) static void FUNC4(unsigned long offset)
{
	Elf64_Rela *rela_start, *rela_end, *rela;
	int r_type, r_sym, rc;
	Elf64_Addr loc, val;
	Elf64_Sym *dynsym;

	rela_start = (Elf64_Rela *) vmlinux.rela_dyn_start;
	rela_end = (Elf64_Rela *) vmlinux.rela_dyn_end;
	dynsym = (Elf64_Sym *) vmlinux.dynsym_start;
	for (rela = rela_start; rela < rela_end; rela++) {
		loc = rela->r_offset + offset;
		val = rela->r_addend;
		r_sym = FUNC0(rela->r_info);
		if (r_sym) {
			if (dynsym[r_sym].st_shndx != SHN_UNDEF)
				val += dynsym[r_sym].st_value + offset;
		} else {
			/*
			 * 0 == undefined symbol table index (STN_UNDEF),
			 * used for R_390_RELATIVE, only add KASLR offset
			 */
			val += offset;
		}
		r_type = FUNC1(rela->r_info);
		rc = FUNC2(r_type, (void *) loc, val, 0);
		if (rc)
			FUNC3("Unknown relocation type");
	}
}