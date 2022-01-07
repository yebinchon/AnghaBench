
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_unit {int dummy; } ;


 int mdelay (int) ;
 int pt_command (struct pt_unit*,char*,int,char*) ;
 int pt_completion (struct pt_unit*,char*,char*) ;
 int pt_req_sense (struct pt_unit*,int) ;

__attribute__((used)) static int pt_atapi(struct pt_unit *tape, char *cmd, int dlen, char *buf, char *fun)
{
 int r;

 r = pt_command(tape, cmd, dlen, fun);
 mdelay(1);
 if (!r)
  r = pt_completion(tape, buf, fun);
 if (r)
  pt_req_sense(tape, !fun);

 return r;
}
