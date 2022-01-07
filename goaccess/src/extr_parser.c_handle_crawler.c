
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ crawlers_only; scalar_t__ ignore_crawlers; } ;


 TYPE_1__ conf ;
 int is_crawler (char const*) ;

__attribute__((used)) static int
handle_crawler (const char *agent)
{
  int bot = 0;

  if (!conf.ignore_crawlers && !conf.crawlers_only)
    return 1;

  bot = is_crawler (agent);
  return (conf.ignore_crawlers && bot) || (conf.crawlers_only && !bot) ? 0 : 1;
}
