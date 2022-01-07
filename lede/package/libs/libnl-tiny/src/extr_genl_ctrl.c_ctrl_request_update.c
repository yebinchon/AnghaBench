
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_sock {int dummy; } ;
struct nl_cache {int dummy; } ;


 int CTRL_CMD_GETFAMILY ;
 int CTRL_VERSION ;
 int GENL_ID_CTRL ;
 int NLM_F_DUMP ;
 int genl_send_simple (struct nl_sock*,int ,int ,int ,int ) ;

__attribute__((used)) static int ctrl_request_update(struct nl_cache *c, struct nl_sock *h)
{
 return genl_send_simple(h, GENL_ID_CTRL, CTRL_CMD_GETFAMILY,
    CTRL_VERSION, NLM_F_DUMP);
}
