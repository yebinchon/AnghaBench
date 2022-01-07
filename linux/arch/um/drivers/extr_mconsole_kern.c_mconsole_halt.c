
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc_request {int dummy; } ;


 int machine_halt () ;
 int mconsole_reply (struct mc_request*,char*,int ,int ) ;

void mconsole_halt(struct mc_request *req)
{
 mconsole_reply(req, "", 0, 0);
 machine_halt();
}
