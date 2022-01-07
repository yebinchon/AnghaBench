
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct request {int dummy; } ;
struct nbd_cmd {int cmd_cookie; } ;


 int NBD_COOKIE_BITS ;
 struct request* blk_mq_rq_from_pdu (struct nbd_cmd*) ;
 int blk_mq_unique_tag (struct request*) ;

__attribute__((used)) static u64 nbd_cmd_handle(struct nbd_cmd *cmd)
{
 struct request *req = blk_mq_rq_from_pdu(cmd);
 u32 tag = blk_mq_unique_tag(req);
 u64 cookie = cmd->cmd_cookie;

 return (cookie << NBD_COOKIE_BITS) | tag;
}
