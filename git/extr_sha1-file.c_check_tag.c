
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
struct tag {int dummy; } ;


 int _ (char*) ;
 int die (int ) ;
 int memset (struct tag*,int ,int) ;
 scalar_t__ parse_tag_buffer (int ,struct tag*,void const*,size_t) ;
 int the_repository ;

__attribute__((used)) static void check_tag(const void *buf, size_t size)
{
 struct tag t;
 memset(&t, 0, sizeof(t));
 if (parse_tag_buffer(the_repository, &t, buf, size))
  die(_("corrupt tag"));
}
