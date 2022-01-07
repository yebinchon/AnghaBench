
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmt_fmt_map {int dummy; } ;


 int commit_formats ;
 struct cmt_fmt_map* find_commit_format_recursive (char const*,char const*,int ) ;
 int setup_commit_formats () ;

__attribute__((used)) static struct cmt_fmt_map *find_commit_format(const char *sought)
{
 if (!commit_formats)
  setup_commit_formats();

 return find_commit_format_recursive(sought, sought, 0);
}
