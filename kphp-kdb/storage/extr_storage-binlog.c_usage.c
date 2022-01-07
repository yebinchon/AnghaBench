
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

void usage (void) {
  fprintf (stderr, "storage-binlog [-p] [-u] [-v] [-h] <binlog>\n"
    "Dumps storage-binlog to stdout.\n"
    "\t-p\tdump log pos\n"
    "\t-u\tdump secret in base64url (default: hex)\n"
  );
  exit (2);
}
