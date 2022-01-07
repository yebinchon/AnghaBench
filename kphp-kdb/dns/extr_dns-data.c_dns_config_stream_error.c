
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* filename; int line; char* buff; int errors; } ;
typedef TYPE_1__ dns_config_stream_t ;


 int fprintf (int ,char*,char*,...) ;
 int stderr ;

__attribute__((used)) static void dns_config_stream_error (dns_config_stream_t *self, const char *funcname) {
  fprintf (stderr, "File: %s, Line: %d, Function: %s\n", self->filename, self->line, funcname);
  fprintf (stderr, "%s\n", self->buff);
  self->errors++;
}
