
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int size; int ptr; } ;
typedef TYPE_1__ git_buf ;


 int ARRAY_SIZE (int ) ;
 TYPE_1__ GIT_BUF_INIT ;
 int check_mailmap_entries (int ,int ,int ) ;
 int check_mailmap_resolve (int ,int ,int ) ;
 int cl_git_pass (int ) ;
 int entries ;
 int g_mailmap ;
 int git_buf_attach_notowned (TYPE_1__*,int ,int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_text_lf_to_crlf (TYPE_1__*,TYPE_1__*) ;
 int git_mailmap_from_buffer (int *,int ,int ) ;
 int resolved ;
 int resolved_untracked ;
 int string_mailmap ;
 int strlen (int ) ;

void test_mailmap_parsing__windows_string(void)
{
 git_buf unixbuf = GIT_BUF_INIT;
 git_buf winbuf = GIT_BUF_INIT;


 git_buf_attach_notowned(&unixbuf, string_mailmap, strlen(string_mailmap));
 cl_git_pass(git_buf_text_lf_to_crlf(&winbuf, &unixbuf));

 cl_git_pass(git_mailmap_from_buffer(&g_mailmap, winbuf.ptr, winbuf.size));
 git_buf_dispose(&winbuf);


 check_mailmap_entries(g_mailmap, entries, ARRAY_SIZE(entries));


 check_mailmap_resolve(g_mailmap, resolved, ARRAY_SIZE(resolved));
 check_mailmap_resolve(
  g_mailmap, resolved_untracked, ARRAY_SIZE(resolved_untracked));
}
