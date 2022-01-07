
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,int) ;
 int fputc (char const,int ) ;
 int stderr ;

void debug_dump_key (const char *key, int key_len) {
  int i;
  if (key_len < 0) { fprintf (stderr, "[len = %d]", key_len); }
  for (i = 0; i < key_len; i++) fputc (key[i], stderr);
  fputc ('\n', stderr);
}
