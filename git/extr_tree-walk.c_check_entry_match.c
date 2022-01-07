
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (char const*,char const*,int) ;
 int name_compare (char const*,int,char const*,int) ;

__attribute__((used)) static int check_entry_match(const char *a, int a_len, const char *b, int b_len)
{
 int cmp = name_compare(a, a_len, b, b_len);


 if (!cmp)
  return cmp;

 if (0 < cmp) {




  return 1;
 }


 if (a_len < b_len && !memcmp(a, b, a_len) && b[a_len] < '/')
  return 1;

 return -1;
}
