
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nrec; TYPE_1__** recs; } ;
typedef TYPE_2__ xdfile_t ;
struct TYPE_4__ {long size; char* ptr; } ;



__attribute__((used)) static int is_eol_crlf(xdfile_t *file, int i)
{
 long size;

 if (i < file->nrec - 1)

  return (size = file->recs[i]->size) > 1 &&
   file->recs[i]->ptr[size - 2] == '\r';
 if (!file->nrec)

  return -1;
 if ((size = file->recs[i]->size) &&
   file->recs[i]->ptr[size - 1] == '\n')

  return size > 1 &&
   file->recs[i]->ptr[size - 2] == '\r';
 if (!i)

  return -1;

 return (size = file->recs[i - 1]->size) > 1 &&
  file->recs[i - 1]->ptr[size - 2] == '\r';
}
