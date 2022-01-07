
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,...) ;
 char* imagefile ;
 int quiet ;
 int stderr ;

__attribute__((used)) static void
indicate_writing(const char *mtd)
{
 if (quiet < 2)
  fprintf(stderr, "\nWriting from %s to %s ... ", imagefile, mtd);

 if (!quiet)
  fprintf(stderr, " [ ]");
}
