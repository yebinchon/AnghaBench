
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct request {int dummy; } ;


 int NBD_CMD_FLUSH ;
 int NBD_CMD_READ ;
 int NBD_CMD_TRIM ;
 int NBD_CMD_WRITE ;




 int U32_MAX ;
 int req_op (struct request*) ;

__attribute__((used)) static u32 req_to_nbd_cmd_type(struct request *req)
{
 switch (req_op(req)) {
 case 131:
  return NBD_CMD_TRIM;
 case 130:
  return NBD_CMD_FLUSH;
 case 128:
  return NBD_CMD_WRITE;
 case 129:
  return NBD_CMD_READ;
 default:
  return U32_MAX;
 }
}
