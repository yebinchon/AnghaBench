
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;


 int check_common ;
 int common_trie ;
 int init_common_trie () ;
 int replace_dir (struct strbuf*,int,char const*) ;
 scalar_t__ trie_find (int *,char*,int ,int *) ;

__attribute__((used)) static void update_common_dir(struct strbuf *buf, int git_dir_len,
         const char *common_dir)
{
 char *base = buf->buf + git_dir_len;
 init_common_trie();
 if (trie_find(&common_trie, base, check_common, ((void*)0)) > 0)
  replace_dir(buf, git_dir_len, common_dir);
}
