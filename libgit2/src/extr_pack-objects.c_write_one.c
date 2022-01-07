
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int recursing; int written; struct TYPE_4__* delta; } ;
typedef TYPE_1__ git_pobject ;
typedef int git_packbuilder ;
typedef enum write_one_status { ____Placeholder_write_one_status } write_one_status ;


 int WRITE_ONE_RECURSIVE ;
 int WRITE_ONE_SKIP ;
 int WRITE_ONE_WRITTEN ;
 int write_object (int *,TYPE_1__*,int (*) (void*,size_t,void*),void*) ;

__attribute__((used)) static int write_one(
 enum write_one_status *status,
 git_packbuilder *pb,
 git_pobject *po,
 int (*write_cb)(void *buf, size_t size, void *cb_data),
 void *cb_data)
{
 int error;

 if (po->recursing) {
  *status = WRITE_ONE_RECURSIVE;
  return 0;
 } else if (po->written) {
  *status = WRITE_ONE_SKIP;
  return 0;
 }

 if (po->delta) {
  po->recursing = 1;

  if ((error = write_one(status, pb, po->delta, write_cb, cb_data)) < 0)
   return error;


  if (*status == WRITE_ONE_RECURSIVE)
   po->delta = ((void*)0);
 }

 *status = WRITE_ONE_WRITTEN;
 po->written = 1;
 po->recursing = 0;

 return write_object(pb, po, write_cb, cb_data);
}
