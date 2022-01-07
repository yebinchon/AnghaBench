
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ max_candidates_tags; } ;
typedef TYPE_1__ git_describe_options ;


 scalar_t__ GIT_DESCRIBE_DEFAULT_MAX_CANDIDATES_TAGS ;
 TYPE_1__ GIT_DESCRIBE_OPTIONS_INIT ;

__attribute__((used)) static int normalize_options(
 git_describe_options *dst,
 const git_describe_options *src)
{
 git_describe_options default_options = GIT_DESCRIBE_OPTIONS_INIT;
 if (!src) src = &default_options;

 *dst = *src;

 if (dst->max_candidates_tags > GIT_DESCRIBE_DEFAULT_MAX_CANDIDATES_TAGS)
  dst->max_candidates_tags = GIT_DESCRIBE_DEFAULT_MAX_CANDIDATES_TAGS;

 return 0;
}
