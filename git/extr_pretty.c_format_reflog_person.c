
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct reflog_walk_info {int dummy; } ;
struct date_mode {int dummy; } ;


 int format_person_part (struct strbuf*,char,char const*,int ,struct date_mode const*) ;
 char* get_reflog_ident (struct reflog_walk_info*) ;
 int strlen (char const*) ;

__attribute__((used)) static int format_reflog_person(struct strbuf *sb,
    char part,
    struct reflog_walk_info *log,
    const struct date_mode *dmode)
{
 const char *ident;

 if (!log)
  return 2;

 ident = get_reflog_ident(log);
 if (!ident)
  return 2;

 return format_person_part(sb, part, ident, strlen(ident), dmode);
}
