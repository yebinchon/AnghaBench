
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** I ;
 char** S ;
 int do_store (char*,char*) ;
 size_t kad_album ;
 size_t kad_bitrate ;
 size_t kad_file ;
 size_t kad_genre ;
 size_t kad_print ;
 size_t kad_uid ;
 int snprintf (char*,int,char*,...) ;
 int source_server ;

void process_kad_row (void) {
  char key_prefix[100], key[200], value[50];
  snprintf (key_prefix, 99, "%d_%lld_%s", source_server, I[kad_uid], S[kad_file]);

  snprintf (key, 199, "%s.kad", key_prefix);
  do_store (key, S[kad_print]);

  snprintf (key, 199, "%s.genre", key_prefix);
  snprintf (value, 49, "%lld", I[kad_genre]);
  do_store (key, value);

  snprintf (key, 199, "%s.rate", key_prefix);
  snprintf (value, 49, "%lld", I[kad_bitrate]);
  do_store (key, value);

  snprintf (key, 199, "%s.album", key_prefix);
  do_store (key, S[kad_album]);
}
