
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ url; } ;
typedef TYPE_1__ git_proxy_options ;


 int GIT_ERROR_CHECK_ALLOC (scalar_t__) ;
 int GIT_PROXY_OPTIONS_VERSION ;
 scalar_t__ git__strdup (scalar_t__) ;
 int git_proxy_options_init (TYPE_1__*,int ) ;
 int memcpy (TYPE_1__*,TYPE_1__ const*,int) ;

int git_proxy_options_dup(git_proxy_options *tgt, const git_proxy_options *src)
{
 if (!src) {
  git_proxy_options_init(tgt, GIT_PROXY_OPTIONS_VERSION);
  return 0;
 }

 memcpy(tgt, src, sizeof(git_proxy_options));
 if (src->url) {
  tgt->url = git__strdup(src->url);
  GIT_ERROR_CHECK_ALLOC(tgt->url);
 }

 return 0;
}
