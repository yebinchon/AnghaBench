
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int stdout_file; } ;
typedef TYPE_1__ process_info_t ;


 int fclose (int ) ;
 int free (int ) ;

void process_cleanup(process_info_t *p) {
  fclose(p->stdout_file);
  free(p->name);
}
