
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* columns; } ;
struct TYPE_4__ {int len; int * modes; } ;
typedef TYPE_2__ Settings ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;

__attribute__((used)) static void writeMeterModes(Settings* this, FILE* fd, int column) {
   const char* sep = "";
   for (int i = 0; i < this->columns[column].len; i++) {
      fprintf(fd, "%s%d", sep, this->columns[column].modes[i]);
      sep = " ";
   }
   fprintf(fd, "\n");
}
