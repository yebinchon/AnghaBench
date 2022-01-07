
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote {int dummy; } ;


 int remote_for_branch ;
 struct remote* remote_get_1 (char const*,int ) ;

struct remote *remote_get(const char *name)
{
 return remote_get_1(name, remote_for_branch);
}
