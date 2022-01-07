
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct pmf_handlers {int dummy; } ;
struct pmf_cmd {int dummy; } ;


 int LOG_PARSE (char*,int ,int ,int ) ;
 int PMF_PARSE_CALL (int ,struct pmf_cmd*,struct pmf_handlers*,int ,int ,int ) ;
 int pmf_next32 (struct pmf_cmd*) ;
 int write_reg8 ;

__attribute__((used)) static int pmf_parser_write_reg8(struct pmf_cmd *cmd, struct pmf_handlers *h)
{
 u32 offset = pmf_next32(cmd);
 u8 value = (u16)pmf_next32(cmd);
 u8 mask = (u16)pmf_next32(cmd);

 LOG_PARSE("pmf: write_reg8(offset: %08x, value: %02x, mask: %02x)\n",
    offset, value, mask);

 PMF_PARSE_CALL(write_reg8, cmd, h, offset, value, mask);
}
