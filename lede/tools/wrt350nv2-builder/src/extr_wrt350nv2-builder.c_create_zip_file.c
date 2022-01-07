
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG ;
 int DEBUG_LVL2 ;
 scalar_t__ WEXITSTATUS (int) ;
 int free (char*) ;
 int lprintf (int ,char*,...) ;
 char* malloc (size_t) ;
 int printf (char*,...) ;
 int snprintf (char*,size_t,char*,char*,char*) ;
 int system (char*) ;

int create_zip_file(char *zip_filename, char *bin_filename) {
 int exitcode = 0;

 char *buffer;
 size_t buffer_size;
 int count;

 buffer_size = 1000;
 buffer = ((void*)0);
 do {

  if (!buffer) {
   buffer = malloc(buffer_size);
  }
  if (!buffer) {
   exitcode = 1;
   printf("create_zip_file: can not allocate %i bytes\n", (int) buffer_size);
   break;
  }


  count = snprintf(buffer, buffer_size, "zip \"%s\" \"%s\"", zip_filename, bin_filename);
  if ((count > -1) && (count < buffer_size)) {
   break;
  }


  if (count > -1) {
   buffer_size = count + 1;
  } else {
   buffer_size *= 2;
  }
  free(buffer);
  buffer = ((void*)0);
  lprintf(DEBUG_LVL2, " extending buffer to %i bytes\n", buffer_size);
 } while (1);

 if (!exitcode) {

  lprintf(DEBUG, "%s\n", buffer);
  count = system(buffer);
  if ((count < 0) || (WEXITSTATUS(count))) {
   exitcode = 1;
   printf("create_zip_file: can not execute %s bytes\n", buffer);
  }
 }

 return exitcode;
}
