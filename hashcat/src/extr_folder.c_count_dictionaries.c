
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int count_dictionaries (char **dictionary_files)
{
  if (dictionary_files == ((void*)0)) return 0;

  int cnt = 0;

  for (int d = 0; dictionary_files[d] != ((void*)0); d++)
  {
    cnt++;
  }

  return (cnt);
}
