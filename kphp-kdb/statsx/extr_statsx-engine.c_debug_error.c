
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug_key (char const*,int) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;
 int verbosity ;

void debug_error (const char *szAction, const char *szMsg, const char *key, int len) {
  if (!verbosity) { return; }
  fprintf (stderr, "Bad %s (key=\"", szAction);
  debug_key (key, len);
  fprintf (stderr, "\"); %s\n", szMsg);
}
