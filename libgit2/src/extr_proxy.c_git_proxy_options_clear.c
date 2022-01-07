
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * url; } ;
typedef TYPE_1__ git_proxy_options ;


 int git__free (char*) ;

void git_proxy_options_clear(git_proxy_options *opts)
{
 git__free((char *) opts->url);
 opts->url = ((void*)0);
}
