
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote {int foreign_vcs; int url; } ;



__attribute__((used)) static int valid_remote(const struct remote *remote)
{
 return (!!remote->url) || (!!remote->foreign_vcs);
}
