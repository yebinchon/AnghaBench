
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit {int dummy; } ;
typedef int c ;


 int _ (char*) ;
 int die (int ) ;
 int memset (struct commit*,int ,int) ;
 scalar_t__ parse_commit_buffer (int ,struct commit*,void const*,size_t,int ) ;
 int the_repository ;

__attribute__((used)) static void check_commit(const void *buf, size_t size)
{
 struct commit c;
 memset(&c, 0, sizeof(c));
 if (parse_commit_buffer(the_repository, &c, buf, size, 0))
  die(_("corrupt commit"));
}
