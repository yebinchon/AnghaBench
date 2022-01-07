
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmt_fmt_map {char* member_0; int member_2; int member_3; int member_1; } ;


 int ALLOC_GROW (int ,int ,int ) ;
 int ARRAY_SIZE (struct cmt_fmt_map*) ;
 int CMIT_FMT_EMAIL ;
 int CMIT_FMT_FULL ;
 int CMIT_FMT_FULLER ;
 int CMIT_FMT_MBOXRD ;
 int CMIT_FMT_MEDIUM ;
 int CMIT_FMT_ONELINE ;
 int CMIT_FMT_RAW ;
 int CMIT_FMT_SHORT ;
 int COPY_ARRAY (int ,struct cmt_fmt_map*,int ) ;
 int builtin_formats_len ;
 int commit_formats ;
 int commit_formats_alloc ;
 int commit_formats_len ;
 int git_config (int ,int *) ;
 int git_pretty_formats_config ;

__attribute__((used)) static void setup_commit_formats(void)
{
 struct cmt_fmt_map builtin_formats[] = {
  { "raw", CMIT_FMT_RAW, 0, 0 },
  { "medium", CMIT_FMT_MEDIUM, 0, 8 },
  { "short", CMIT_FMT_SHORT, 0, 0 },
  { "email", CMIT_FMT_EMAIL, 0, 0 },
  { "mboxrd", CMIT_FMT_MBOXRD, 0, 0 },
  { "fuller", CMIT_FMT_FULLER, 0, 8 },
  { "full", CMIT_FMT_FULL, 0, 8 },
  { "oneline", CMIT_FMT_ONELINE, 1, 0 }




 };
 commit_formats_len = ARRAY_SIZE(builtin_formats);
 builtin_formats_len = commit_formats_len;
 ALLOC_GROW(commit_formats, commit_formats_len, commit_formats_alloc);
 COPY_ARRAY(commit_formats, builtin_formats,
     ARRAY_SIZE(builtin_formats));

 git_config(git_pretty_formats_config, ((void*)0));
}
