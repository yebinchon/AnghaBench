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
struct tlb {int dummy; } ;
struct cpu_state {int cl; int /*<<< orphan*/  eip; } ;
typedef  int byte_t ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int A ; 
 int C ; 
 int O ; 
 int P ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int S ; 
 int Z ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

int FUNC2(struct cpu_state *cpu, struct tlb *tlb) {
    addr_t ip = cpu->eip;
    byte_t opcode;
#define read(x) tlb_read(tlb, ip++, &x, sizeof(x));
skip:
    read(opcode);
    switch (opcode) {
        // shift or rotate, of is undefined if shift count is greater than 1
        case 0x0f:
            read(opcode);
            switch(opcode) {
                // shrd/shld
                case 0xa4:
                case 0xa5:
                case 0xac:
                case 0xad: {
                    ip++;
                    byte_t shift;
                    if (opcode == 0xad)
                        shift = cpu->cl;
                    else
                        read(shift);
                    if (shift == 1)
                        return O|A;
                    else if (shift > 1)
                        return O|A;
                    break;
                }
                case 0xaf: return S|Z|A|P; // imul
                case 0xbd: case 0xbc: return O|S|A|P|C; // bsr/bsf
            }
            break;

        case 0x69:
        case 0x6b: return S|Z|A|P; // imul

        case 0xc0:
        case 0xc1:
        case 0xd0:
        case 0xd1:
        case 0xd2:
        case 0xd3: {
            ip++; // skip modrm
            byte_t shift_count;
            if (opcode == 0xd0 || opcode == 0xd1)
                shift_count = 1;
            else if (opcode == 0xd2 || opcode == 0xd3)
                shift_count = cpu->cl;
            else
                read(shift_count);
            if (shift_count > 1)
                return O;
            break;
        }

        case 0xf6: case 0xf7: {
            // group 3
            byte_t modrm;
            read(modrm);
            switch (FUNC0(modrm)) {
                case 4: return S|Z|A|P; // mul
                case 5: return S|Z|A|P; // imul
            }
            break;
        }
        case 0x66: goto skip;
    }
    return 0;
}