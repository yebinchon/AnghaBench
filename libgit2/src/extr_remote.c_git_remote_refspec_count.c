
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t length; } ;
struct TYPE_5__ {TYPE_1__ refspecs; } ;
typedef TYPE_2__ git_remote ;



size_t git_remote_refspec_count(const git_remote *remote)
{
 return remote->refspecs.length;
}
