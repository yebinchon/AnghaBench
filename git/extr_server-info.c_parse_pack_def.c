
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pack_info {int old_num; } ;


 struct pack_info* find_pack_by_name (char const*) ;

__attribute__((used)) static int parse_pack_def(const char *packname, int old_cnt)
{
 struct pack_info *i = find_pack_by_name(packname);
 if (i) {
  i->old_num = old_cnt;
  return 0;
 }
 else {

  return 1;
 }
}
