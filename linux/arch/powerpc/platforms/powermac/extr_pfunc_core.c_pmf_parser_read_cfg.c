
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pmf_handlers {int dummy; } ;
struct pmf_cmd {int dummy; } ;


 int LOG_PARSE (char*,int ,int ) ;
 int PMF_PARSE_CALL (int ,struct pmf_cmd*,struct pmf_handlers*,int ,int ) ;
 int pmf_next32 (struct pmf_cmd*) ;
 int read_cfg ;

__attribute__((used)) static int pmf_parser_read_cfg(struct pmf_cmd *cmd, struct pmf_handlers *h)
{
 u32 offset = pmf_next32(cmd);
 u32 bytes = pmf_next32(cmd);

 LOG_PARSE("pmf: read_cfg(offset: %x, bytes: %ud)\n", offset, bytes);

 PMF_PARSE_CALL(read_cfg, cmd, h, offset, bytes);
}
