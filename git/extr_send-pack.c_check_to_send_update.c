
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct send_pack_args {int send_mirror; } ;
struct ref {int status; int peer_ref; } ;


 int CHECK_REF_NO_PUSH ;
 int CHECK_REF_STATUS_REJECTED ;
 int CHECK_REF_UPTODATE ;
__attribute__((used)) static int check_to_send_update(const struct ref *ref, const struct send_pack_args *args)
{
 if (!ref->peer_ref && !args->send_mirror)
  return CHECK_REF_NO_PUSH;


 switch (ref->status) {
 case 130:
 case 134:
 case 133:
 case 132:
 case 129:
 case 131:
  return CHECK_REF_STATUS_REJECTED;
 case 128:
  return CHECK_REF_UPTODATE;
 default:
  return 0;
 }
}
