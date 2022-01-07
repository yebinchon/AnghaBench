
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S_IFDIR ;
 int df_name_compare (char const*,int,int ,char const*,int,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int string_list_df_name_compare(const char *one, const char *two)
{
 int onelen = strlen(one);
 int twolen = strlen(two);
 int cmp = df_name_compare(one, onelen, S_IFDIR,
      two, twolen, S_IFDIR);




 if (cmp)
  return cmp;
 return onelen - twolen;
}
