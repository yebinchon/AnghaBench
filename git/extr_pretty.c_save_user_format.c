
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int use_terminator; int commit_format; } ;


 int CMIT_FMT_USERFORMAT ;
 int free (int ) ;
 int user_format ;
 int xstrdup (char const*) ;

__attribute__((used)) static void save_user_format(struct rev_info *rev, const char *cp, int is_tformat)
{
 free(user_format);
 user_format = xstrdup(cp);
 if (is_tformat)
  rev->use_terminator = 1;
 rev->commit_format = CMIT_FMT_USERFORMAT;
}
