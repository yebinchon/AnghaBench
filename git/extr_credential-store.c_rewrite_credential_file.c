
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct credential {int dummy; } ;


 scalar_t__ commit_lock_file (int *) ;
 int credential_lock ;
 int die_errno (char*) ;
 scalar_t__ hold_lock_file_for_update (int *,char const*,int ) ;
 int parse_credential_file (char const*,struct credential*,int *,int (*) (struct strbuf*)) ;
 int print_line (struct strbuf*) ;

__attribute__((used)) static void rewrite_credential_file(const char *fn, struct credential *c,
        struct strbuf *extra)
{
 if (hold_lock_file_for_update(&credential_lock, fn, 0) < 0)
  die_errno("unable to get credential storage lock");
 if (extra)
  print_line(extra);
 parse_credential_file(fn, c, ((void*)0), print_line);
 if (commit_lock_file(&credential_lock) < 0)
  die_errno("unable to write credential store");
}
