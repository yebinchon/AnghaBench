
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

void
usage() {
 fprintf(stderr, "Usage:\n"
  "jcgimage -o outfile -u uImage [-v version]\n"
  "jcgimage -o outfile -k kernel -f rootfs [-v version]\n");
 exit(1);
}
