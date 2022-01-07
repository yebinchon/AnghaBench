
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strtok_r (char*,char*,char**) ;

int nvrtc_make_options_array_from_string (char *string, char **options)
{
  char *saveptr = ((void*)0);

  char *next = strtok_r (string, " ", &saveptr);

  int cnt = 0;

  do
  {
    options[cnt] = next;

    cnt++;

  } while ((next = strtok_r ((char *) ((void*)0), " ", &saveptr)) != ((void*)0));

  return cnt;
}
