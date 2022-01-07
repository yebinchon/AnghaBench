
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct string_list {int dummy; } ;
typedef int int8_t ;
 void* git_config_get_value_multi (char*) ;
 int initialized ;
 scalar_t__ isdigit (unsigned char const) ;
 struct string_list const* prereleases ;
 scalar_t__ swap_prereleases (char const*,char const*,int,int*) ;
 int warning (char*) ;

int versioncmp(const char *s1, const char *s2)
{
 const unsigned char *p1 = (const unsigned char *) s1;
 const unsigned char *p2 = (const unsigned char *) s2;
 unsigned char c1, c2;
 int state, diff;





 static const uint8_t next_state[] = {

             129, 130, 128,
             129, 130, 130,
             129, 131, 131,
             129, 131, 128
 };

 static const int8_t result_type[] = {


             133, 133, 133, 133, 132, 133, 133, 133, 133,
             133, -1, -1, +1, 132, 132, +1, 132, 132,
             133, 133, 133, 133, 133, 133, 133, 133, 133,
             133, +1, +1, -1, 133, 133, -1, 133, 133
 };

 if (p1 == p2)
  return 0;

 c1 = *p1++;
 c2 = *p2++;

 state = 129 + ((c1 == '0') + (isdigit (c1) != 0));

 while ((diff = c1 - c2) == 0) {
  if (c1 == '\0')
   return diff;

  state = next_state[state];
  c1 = *p1++;
  c2 = *p2++;
  state += (c1 == '0') + (isdigit (c1) != 0);
 }

 if (!initialized) {
  const struct string_list *deprecated_prereleases;
  initialized = 1;
  prereleases = git_config_get_value_multi("versionsort.suffix");
  deprecated_prereleases = git_config_get_value_multi("versionsort.prereleasesuffix");
  if (prereleases) {
   if (deprecated_prereleases)
    warning("ignoring versionsort.prereleasesuffix because versionsort.suffix is set");
  } else
   prereleases = deprecated_prereleases;
 }
 if (prereleases && swap_prereleases(s1, s2, (const char *) p1 - s1 - 1,
         &diff))
  return diff;

 state = result_type[state * 3 + (((c2 == '0') + (isdigit (c2) != 0)))];

 switch (state) {
 case 133:
  return diff;

 case 132:
  while (isdigit (*p1++))
   if (!isdigit (*p2++))
    return 1;

  return isdigit (*p2) ? -1 : diff;

 default:
  return state;
 }
}
