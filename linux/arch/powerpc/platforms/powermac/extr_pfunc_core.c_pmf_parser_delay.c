
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pmf_handlers {int dummy; } ;
struct pmf_cmd {int dummy; } ;


 int LOG_PARSE (char*,int ) ;
 int PMF_PARSE_CALL (int ,struct pmf_cmd*,struct pmf_handlers*,int ) ;
 int delay ;
 int pmf_next32 (struct pmf_cmd*) ;

__attribute__((used)) static int pmf_parser_delay(struct pmf_cmd *cmd, struct pmf_handlers *h)
{
 u32 duration = pmf_next32(cmd);

 LOG_PARSE("pmf: delay(duration: %d us)\n", duration);

 PMF_PARSE_CALL(delay, cmd, h, duration);
}
