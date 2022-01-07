
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* FullVersionStr ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

void usage (void) {
  fprintf (stderr, "./storage-binlog-check <input-binlog>\n"
                   "\t%s\n",
           FullVersionStr);
}
