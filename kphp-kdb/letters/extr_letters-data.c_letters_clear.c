
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int priority; struct TYPE_5__* next; int id; } ;
typedef TYPE_1__ temp_letter ;
struct TYPE_6__ {int drive_l; int drive_r; int memory_l; int memory_r; int drive_old_mx; int memory_buf_r; scalar_t__ memory_buf_l; } ;
typedef TYPE_2__ one_header ;
struct TYPE_7__ {TYPE_2__* data; } ;


 long long FILE_END ;
 int SEEK_SET ;
 int assert (int) ;
 int delete_letter (int ) ;
 int expired_letters ;
 int * fd ;
 long long get_drive_buffer_size (int) ;
 TYPE_1__ head_letter ;
 TYPE_3__ header ;
 int lseek (int ,int,int ) ;
 scalar_t__* memory_buf ;
 int process_delayed_letters (int,int ) ;

long long letters_clear (int priority) {
  if (priority == 0) {
    long long result = get_drive_buffer_size (priority);
    process_delayed_letters (1, 0);
    return result;
  }

  long long result = get_drive_buffer_size (priority);
  one_header *data = &header.data[priority];

  temp_letter *cur_letter = &head_letter;
  while (cur_letter->next != &head_letter) {
    if (cur_letter->next->priority == priority) {
      delete_letter (cur_letter->next->id);
      expired_letters++;
    } else {
      cur_letter = cur_letter->next;
    }
  }

  data->drive_l = data->drive_r;
  data->memory_l = data->drive_l;
  data->memory_r = (data->drive_r + sizeof (long long)) % data->drive_old_mx;
  data->memory_buf_l = 0;
  data->memory_buf_r = sizeof (long long);
  *((long long *)memory_buf[priority]) = FILE_END;

  assert (lseek (fd[2 + priority], data->drive_r, SEEK_SET) == data->drive_r);
  assert (*(long long *)(memory_buf[priority] + data->memory_buf_l) == FILE_END);

  return result;
}
