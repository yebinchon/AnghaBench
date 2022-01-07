
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pmf_handlers {int dummy; } ;
struct pmf_cmd {int dummy; } ;


 int LOG_BLOB (char*,void const*,int ) ;
 int LOG_PARSE (char*,int ,int ) ;
 int PMF_PARSE_CALL (int ,struct pmf_cmd*,struct pmf_handlers*,int ,int ,void const*) ;
 int pmf_next32 (struct pmf_cmd*) ;
 void* pmf_next_blob (struct pmf_cmd*,int ) ;
 int write_cfg ;

__attribute__((used)) static int pmf_parser_write_cfg(struct pmf_cmd *cmd, struct pmf_handlers *h)
{
 u32 offset = pmf_next32(cmd);
 u32 bytes = pmf_next32(cmd);
 const void *blob = pmf_next_blob(cmd, bytes);

 LOG_PARSE("pmf: write_cfg(offset: %x, bytes: %ud)\n", offset, bytes);
 LOG_BLOB("pmf:   data: \n", blob, bytes);

 PMF_PARSE_CALL(write_cfg, cmd, h, offset, bytes, blob);
}
