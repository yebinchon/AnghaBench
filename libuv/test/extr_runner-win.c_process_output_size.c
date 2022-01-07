
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int stdio_out; } ;
typedef TYPE_1__ process_info_t ;
struct TYPE_6__ {scalar_t__ QuadPart; } ;
typedef TYPE_2__ LARGE_INTEGER ;


 int GetFileSizeEx (int ,TYPE_2__*) ;

long int process_output_size(process_info_t *p) {
  LARGE_INTEGER size;
  if (!GetFileSizeEx(p->stdio_out, &size))
    return -1;
  return (long int)size.QuadPart;
}
