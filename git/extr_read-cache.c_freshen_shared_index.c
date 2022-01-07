
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int check_and_freshen_file (char const*,int) ;
 int warning (int ,char const*) ;

__attribute__((used)) static void freshen_shared_index(const char *shared_index, int warn)
{
 if (!check_and_freshen_file(shared_index, 1) && warn)
  warning(_("could not freshen shared index '%s'"), shared_index);
}
