
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote {int dummy; } ;


 int pushremote_for_branch ;
 struct remote* remote_get_1 (char const*,int ) ;

struct remote *pushremote_get(const char *name)
{
 return remote_get_1(name, pushremote_for_branch);
}
