
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlb {int dummy; } ;
struct cpu_state {int cl; int eip; } ;
typedef int byte_t ;
typedef int addr_t ;


 int A ;
 int C ;
 int O ;
 int P ;
 int REG (int) ;
 int S ;
 int Z ;
 int read (int) ;

int undefined_flags_mask(struct cpu_state *cpu, struct tlb *tlb) {
    addr_t ip = cpu->eip;
    byte_t opcode;

skip:
    tlb_read(tlb, ip++, &opcode, sizeof(opcode));;
    switch (opcode) {

        case 0x0f:
            tlb_read(tlb, ip++, &opcode, sizeof(opcode));;
            switch(opcode) {

                case 0xa4:
                case 0xa5:
                case 0xac:
                case 0xad: {
                    ip++;
                    byte_t shift;
                    if (opcode == 0xad)
                        shift = cpu->cl;
                    else
                        tlb_read(tlb, ip++, &shift, sizeof(shift));;
                    if (shift == 1)
                        return O|A;
                    else if (shift > 1)
                        return O|A;
                    break;
                }
                case 0xaf: return S|Z|A|P;
                case 0xbd: case 0xbc: return O|S|A|P|C;
            }
            break;

        case 0x69:
        case 0x6b: return S|Z|A|P;

        case 0xc0:
        case 0xc1:
        case 0xd0:
        case 0xd1:
        case 0xd2:
        case 0xd3: {
            ip++;
            byte_t shift_count;
            if (opcode == 0xd0 || opcode == 0xd1)
                shift_count = 1;
            else if (opcode == 0xd2 || opcode == 0xd3)
                shift_count = cpu->cl;
            else
                tlb_read(tlb, ip++, &shift_count, sizeof(shift_count));;
            if (shift_count > 1)
                return O;
            break;
        }

        case 0xf6: case 0xf7: {

            byte_t modrm;
            tlb_read(tlb, ip++, &modrm, sizeof(modrm));;
            switch (REG(modrm)) {
                case 4: return S|Z|A|P;
                case 5: return S|Z|A|P;
            }
            break;
        }
        case 0x66: goto skip;
    }
    return 0;
}
