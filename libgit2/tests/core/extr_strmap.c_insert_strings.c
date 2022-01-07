
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_strmap ;


 int cl_assert_equal_i (int ,size_t) ;
 int cl_git_pass (int ) ;
 int git_strmap_set (int *,char*,char*) ;
 int git_strmap_size (int *) ;
 char* malloc (int) ;

__attribute__((used)) static void insert_strings(git_strmap *table, size_t count)
{
 size_t i, j, over;
 char *str;

 for (i = 0; i < count; ++i) {
  str = malloc(10);
  for (j = 0; j < 10; ++j)
   str[j] = 'a' + (i % 26);
  str[9] = '\0';


  for (j = 0, over = i / 26; over > 0; j++, over = over / 26)
   str[j] = 'A' + (over % 26);

  cl_git_pass(git_strmap_set(table, str, str));
 }

 cl_assert_equal_i(git_strmap_size(table), count);
}
