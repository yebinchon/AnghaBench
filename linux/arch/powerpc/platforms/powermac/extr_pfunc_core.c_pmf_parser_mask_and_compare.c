
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pmf_handlers {int dummy; } ;
struct pmf_cmd {int dummy; } ;


 int LOG_BLOB (char*,void const*,int ) ;
 int LOG_PARSE (char*,int ) ;
 int PMF_PARSE_CALL (int ,struct pmf_cmd*,struct pmf_handlers*,int ,void const*,void const*) ;
 int mask_and_compare ;
 int pmf_next32 (struct pmf_cmd*) ;
 void* pmf_next_blob (struct pmf_cmd*,int ) ;

__attribute__((used)) static int pmf_parser_mask_and_compare(struct pmf_cmd *cmd,
           struct pmf_handlers *h)
{
 u32 bytes = pmf_next32(cmd);
 const void *maskblob = pmf_next_blob(cmd, bytes);
 const void *valuesblob = pmf_next_blob(cmd, bytes);

 LOG_PARSE("pmf: mask_and_compare(length: %ud ...\n", bytes);
 LOG_BLOB("pmf:   mask data: \n", maskblob, bytes);
 LOG_BLOB("pmf:   values data: \n", valuesblob, bytes);

 PMF_PARSE_CALL(mask_and_compare, cmd, h,
         bytes, maskblob, valuesblob);
}
