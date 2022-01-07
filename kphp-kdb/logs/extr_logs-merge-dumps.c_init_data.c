
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFF_SIZE ;
 void* dl_malloc (int) ;
 void* dl_malloc0 (int) ;
 scalar_t__ dl_open_file (int,char*,int) ;
 char* dump_name ;
 int engineF ;
 int engineN ;
 int exit (int) ;
 void** f_buff ;
 void* f_buff_r ;
 void* f_buff_size ;
 int* fd ;
 int fprintf (int ,char*,...) ;
 int left_files ;
 int snprintf (char*,int,char*,char*,int) ;
 int stderr ;

void init_data (void) {
  char fname[100];
  int i;

  f_buff = dl_malloc (sizeof (char *) * engineN);
  f_buff_size = dl_malloc0 (sizeof (int) * engineN);
  f_buff_r = dl_malloc0 (sizeof (int) * engineN);

  for (i = engineF; i < engineN; i++) {

    if (snprintf (fname, 100, "%s%d.dump", dump_name, i) >= 100) {
      fprintf (stderr, "Filename is too long.\n");
      exit (1);
    }
    if (dl_open_file (i, fname, -1) < 0) {
      fprintf (stderr, "File '%s' not found.\n", fname);
      fd[i] = -1;
      continue;
    } else {

    }
    left_files++;
    f_buff[i] = dl_malloc (sizeof (char) * BUFF_SIZE);
  }
}
