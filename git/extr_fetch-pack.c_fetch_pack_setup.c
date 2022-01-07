
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fetch_pack_config () ;
 scalar_t__ fetch_unpack_limit ;
 scalar_t__ transfer_unpack_limit ;
 scalar_t__ unpack_limit ;

__attribute__((used)) static void fetch_pack_setup(void)
{
 static int did_setup;
 if (did_setup)
  return;
 fetch_pack_config();
 if (0 <= transfer_unpack_limit)
  unpack_limit = transfer_unpack_limit;
 else if (0 <= fetch_unpack_limit)
  unpack_limit = fetch_unpack_limit;
 did_setup = 1;
}
