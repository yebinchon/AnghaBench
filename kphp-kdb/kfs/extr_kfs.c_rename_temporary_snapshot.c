
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int access (char*,int ) ;
 int assert (int) ;
 int fprintf (int ,char*,char const*,...) ;
 int memcpy (char*,char const*,int) ;
 int rename (char const*,char*) ;
 int stderr ;
 int strcmp (char const*,char*) ;
 int strlen (char const*) ;
 int verbosity ;

int rename_temporary_snapshot (const char *name) {
  int l = strlen (name);
  assert (l >= 4 && !strcmp (name + l - 4, ".tmp") && l <= 256);
  static char tmpbuff[256];
  memcpy (tmpbuff, name, l - 4);
  tmpbuff[l - 4] = 0;
  if (verbosity > 1) {
    fprintf (stderr, "renaming temporary snapshot %s to %s\n", name, tmpbuff);
  }
  if (!access (tmpbuff, 0)) {
    fprintf (stderr, "fatal: snapshot %s already exists\n", tmpbuff);
    return -1;
  }
  return rename (name, tmpbuff);
}
