
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_HASH_SHA256 ;
 int cmd_hash_impl (int,char const**,int ) ;

int cmd__sha256(int ac, const char **av)
{
 return cmd_hash_impl(ac, av, GIT_HASH_SHA256);
}
