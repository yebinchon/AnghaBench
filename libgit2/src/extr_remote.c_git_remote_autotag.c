
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_remote_autotag_option_t ;
struct TYPE_3__ {int download_tags; } ;
typedef TYPE_1__ git_remote ;



git_remote_autotag_option_t git_remote_autotag(const git_remote *remote)
{
 return remote->download_tags;
}
