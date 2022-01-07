
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_signature ;
typedef int git_oid ;
typedef int git_buf ;
typedef int git_array_oid_t ;


 int assert (int) ;
 int * git_array_get (int ,size_t) ;
 size_t git_array_size (int ) ;
 int git_buf_dispose (int *) ;
 int git_buf_printf (int *,char*,char const*) ;
 int git_buf_putc (int *,char) ;
 scalar_t__ git_buf_puts (int *,char const*) ;
 int git_oid__writebuf (int *,char*,int const*) ;
 int git_signature__writebuf (int *,char*,int const*) ;

__attribute__((used)) static int git_commit__create_buffer_internal(
 git_buf *out,
 const git_signature *author,
 const git_signature *committer,
 const char *message_encoding,
 const char *message,
 const git_oid *tree,
 git_array_oid_t *parents)
{
 size_t i = 0;
 const git_oid *parent;

 assert(out && tree);

 git_oid__writebuf(out, "tree ", tree);

 for (i = 0; i < git_array_size(*parents); i++) {
  parent = git_array_get(*parents, i);
  git_oid__writebuf(out, "parent ", parent);
 }

 git_signature__writebuf(out, "author ", author);
 git_signature__writebuf(out, "committer ", committer);

 if (message_encoding != ((void*)0))
  git_buf_printf(out, "encoding %s\n", message_encoding);

 git_buf_putc(out, '\n');

 if (git_buf_puts(out, message) < 0)
  goto on_error;

 return 0;

on_error:
 git_buf_dispose(out);
 return -1;
}
