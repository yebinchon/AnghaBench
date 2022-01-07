
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc_request {int dummy; } ;


 int mconsole_reply (struct mc_request*,char*,int,int ) ;

void mconsole_sysrq(struct mc_request *req)
{
 mconsole_reply(req, "Sysrq not compiled in", 1, 0);
}
