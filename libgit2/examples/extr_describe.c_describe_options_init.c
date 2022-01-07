
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int format_options; int describe_options; scalar_t__ commit_count; int * commits; } ;
typedef TYPE_1__ describe_options ;


 int GIT_DESCRIBE_FORMAT_OPTIONS_VERSION ;
 int GIT_DESCRIBE_OPTIONS_VERSION ;
 int git_describe_format_options_init (int *,int ) ;
 int git_describe_options_init (int *,int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void describe_options_init(describe_options *opts)
{
 memset(opts, 0, sizeof(*opts));

 opts->commits = ((void*)0);
 opts->commit_count = 0;
 git_describe_options_init(&opts->describe_options, GIT_DESCRIBE_OPTIONS_VERSION);
 git_describe_format_options_init(&opts->format_options, GIT_DESCRIBE_FORMAT_OPTIONS_VERSION);
}
