
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double GIB (unsigned long long) ;
 double KIB (unsigned long long) ;
 double MIB (unsigned long long) ;
 double PIB (unsigned long long) ;
 double TIB (unsigned long long) ;
 int snprintf (char*,int,char*,double) ;
 char* xmalloc (int) ;

char *
filesize_str (unsigned long long log_size)
{
  char *size = xmalloc (sizeof (char) * 12);
  if (log_size >= (1ULL << 50))
    snprintf (size, 12, "%.2f PiB", (double) (log_size) / PIB (1ULL));
  else if (log_size >= (1ULL << 40))
    snprintf (size, 12, "%.2f TiB", (double) (log_size) / TIB (1ULL));
  else if (log_size >= (1ULL << 30))
    snprintf (size, 12, "%.2f GiB", (double) (log_size) / GIB (1ULL));
  else if (log_size >= (1ULL << 20))
    snprintf (size, 12, "%.2f MiB", (double) (log_size) / MIB (1ULL));
  else if (log_size >= (1ULL << 10))
    snprintf (size, 12, "%.2f KiB", (double) (log_size) / KIB (1ULL));
  else
    snprintf (size, 12, "%.1f   B", (double) (log_size));

  return size;
}
