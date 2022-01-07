
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_absolute_path (char const*) ;

__attribute__((used)) static void strip_prefix(int prefix_length, const char **namep, const char **otherp)
{

 if (*namep && !is_absolute_path(*namep)) {
  *namep += prefix_length;
  if (**namep == '/')
   ++*namep;
 }
 if (*otherp && !is_absolute_path(*otherp)) {
  *otherp += prefix_length;
  if (**otherp == '/')
   ++*otherp;
 }
}
