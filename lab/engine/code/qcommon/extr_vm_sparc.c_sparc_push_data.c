
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct func_info {int data_num; struct data_hunk* data_first; } ;
struct data_hunk {int count; unsigned int* data; struct data_hunk* next; } ;


 scalar_t__ HUNK_SIZE ;
 unsigned int VM_Data_Offset (int ) ;
 struct data_hunk* Z_Malloc (int) ;
 int * data ;

__attribute__((used)) static unsigned int sparc_push_data(struct func_info * const fp, unsigned int val)
{
 struct data_hunk *last, *dp = fp->data_first;
 int off = 0;

 last = ((void*)0);
 while (dp) {
  int i;

  for (i = 0; i < dp->count; i++) {
   if (dp->data[i] == val) {
    off += i;
    return VM_Data_Offset(data[off]);
   }
  }
  off += dp->count;
  last = dp;
  dp = dp->next;
 }

 dp = last;
 if (!dp || dp->count >= HUNK_SIZE) {
  struct data_hunk *new = Z_Malloc(sizeof(*new));
  if (!dp)
   fp->data_first = new;
  else
   dp->next = new;
  dp = new;
  dp->count = 0;
  dp->next = ((void*)0);
 }
 dp->data[dp->count++] = val;
 fp->data_num = off + 1;
 return VM_Data_Offset(data[off]);
}
