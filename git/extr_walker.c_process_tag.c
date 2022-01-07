
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct walker {int dummy; } ;
struct tag {int tagged; } ;


 scalar_t__ parse_tag (struct tag*) ;
 int process (struct walker*,int ) ;

__attribute__((used)) static int process_tag(struct walker *walker, struct tag *tag)
{
 if (parse_tag(tag))
  return -1;
 return process(walker, tag->tagged);
}
