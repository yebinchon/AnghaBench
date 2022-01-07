
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reflog_entry ;
typedef int git_buf ;


 int GIT_OID_HEXSZ ;
 int assert (int) ;
 int git_buf_printf (int *,char*,char*,char*,char*,int ) ;
 int git_oid_tostr (char*,int,int ) ;
 int git_reflog_entry_id_new (int const*) ;
 int git_reflog_entry_id_old (int const*) ;
 int git_reflog_entry_message (int const*) ;

__attribute__((used)) static int reflog_entry_tostr(git_buf *out, const git_reflog_entry *entry)
{
 char old_oid[GIT_OID_HEXSZ], new_oid[GIT_OID_HEXSZ];

 assert(out && entry);

 git_oid_tostr((char *)&old_oid, GIT_OID_HEXSZ, git_reflog_entry_id_old(entry));
 git_oid_tostr((char *)&new_oid, GIT_OID_HEXSZ, git_reflog_entry_id_new(entry));

 return git_buf_printf(out, "%s %s %s %s", old_oid, new_oid, "somesig", git_reflog_entry_message(entry));
}
