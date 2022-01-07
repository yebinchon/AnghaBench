
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PUD_SIZE ;
 int max_gb_huge_pages ;
 scalar_t__ memparse (char*,char**) ;
 int simple_strtoull (char*,char**,int ) ;
 int strcmp (char*,char*) ;
 int warn (char*) ;

__attribute__((used)) static void parse_gb_huge_pages(char *param, char *val)
{
 static bool gbpage_sz;
 char *p;

 if (!strcmp(param, "hugepagesz")) {
  p = val;
  if (memparse(p, &p) != PUD_SIZE) {
   gbpage_sz = 0;
   return;
  }

  if (gbpage_sz)
   warn("Repeatedly set hugeTLB page size of 1G!\n");
  gbpage_sz = 1;
  return;
 }

 if (!strcmp(param, "hugepages") && gbpage_sz) {
  p = val;
  max_gb_huge_pages = simple_strtoull(p, &p, 0);
  return;
 }
}
