
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef int rpc_status ;


 int RPC_ERROR ;
 int RPC_SUCCESS ;
 scalar_t__ asprintf (char**,char*,int,int,int,int,int,int,int,int) ;
 scalar_t__ malloc (int) ;
 int rand () ;
 int srand (int ) ;
 int time (int *) ;
 int uuid_generate (int ) ;
 int uuid_unparse_upper (int ,char*) ;

rpc_status rpc_new_uuid(char **to_uuid) {
  if (!to_uuid) {
    return RPC_ERROR;
  }







  static bool seeded = 0;
  if (!seeded) {
    seeded = 1;
    srand(time(((void*)0)));
  }
  if (asprintf(to_uuid, "%x%x-%x-%x-%x-%x%x%x",
      rand(), rand(), rand(),
      ((rand() & 0x0fff) | 0x4000),
      rand() % 0x3fff + 0x8000,
      rand(), rand(), rand()) < 0) {
    return RPC_ERROR;
  }

  return RPC_SUCCESS;
}
