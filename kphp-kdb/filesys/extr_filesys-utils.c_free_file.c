
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* filename; } ;
typedef TYPE_1__ file_t ;


 int strlen (TYPE_1__*) ;
 int zfree (TYPE_1__*,int) ;

__attribute__((used)) static void free_file (file_t *p) {
  if (p->filename) {
    zfree (p->filename, strlen (p->filename) + 1);
  }
  zfree (p, sizeof (*p));
}
