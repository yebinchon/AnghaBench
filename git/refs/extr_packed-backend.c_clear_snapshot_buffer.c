
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snapshot {int * eof; int * start; int * buf; scalar_t__ mmapped; TYPE_1__* refs; } ;
struct TYPE_2__ {int path; } ;


 int die_errno (char*,int ) ;
 int free (int *) ;
 scalar_t__ munmap (int *,int) ;

__attribute__((used)) static void clear_snapshot_buffer(struct snapshot *snapshot)
{
 if (snapshot->mmapped) {
  if (munmap(snapshot->buf, snapshot->eof - snapshot->buf))
   die_errno("error ummapping packed-refs file %s",
      snapshot->refs->path);
  snapshot->mmapped = 0;
 } else {
  free(snapshot->buf);
 }
 snapshot->buf = snapshot->start = snapshot->eof = ((void*)0);
}
