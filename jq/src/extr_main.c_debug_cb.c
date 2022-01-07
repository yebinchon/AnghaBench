
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int JV_ARRAY (int ,int ) ;
 int JV_PRINT_PRETTY ;
 int fprintf (int ,char*) ;
 int jv_dumpf (int ,int ,int) ;
 int jv_string (char*) ;
 int stderr ;

__attribute__((used)) static void debug_cb(void *data, jv input) {
  int dumpopts = *(int *)data;
  jv_dumpf(JV_ARRAY(jv_string("DEBUG:"), input), stderr, dumpopts & ~(JV_PRINT_PRETTY));
  fprintf(stderr, "\n");
}
