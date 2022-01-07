
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long* I ;
 scalar_t__* S ;
 int do_store (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 int sprintf (char*,char*,long long,long long,long long) ;
 int stderr ;
 int verbosity ;
 char* write_buffer ;

void process_api_uvars_row (void) {
  long long id = I[0];
  char *data = (char*)S[1];
  long long api_id = id / 1000000000000ll;
  long long user_id = id / 1000 % 1000000000;
  long long var_id = id % 1000;
  sprintf (write_buffer, "lu%lld.%lld.%lld", user_id, api_id, var_id);
  if (verbosity > 1) {
    fprintf (stderr, "store: %s\n", write_buffer);
  }
  do_store (write_buffer, data);
}
