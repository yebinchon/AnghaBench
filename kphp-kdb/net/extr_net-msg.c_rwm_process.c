
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct raw_message {int total_bytes; int first_offset; int last_offset; struct msg_part* last; struct msg_part* first; } ;
struct msg_part {int offset; int len; struct msg_part* next; TYPE_1__* part; } ;
struct TYPE_2__ {void const* data; } ;


 int assert (int) ;

int rwm_process (struct raw_message *raw, int bytes, void (*process_block)(void *extra, const void *data, int len), void *extra) {
  assert (bytes >= 0);
  if (bytes > raw->total_bytes) {
    bytes = raw->total_bytes;
  }
  if (!bytes) { return 0; }
  int x = bytes;
  if (raw->first) {
    struct msg_part *mp = raw->first;
    while (mp) {
      int start = (mp == raw->first) ? raw->first_offset : mp->offset;
      int len = (mp == raw->last) ? raw->last_offset - start: mp->len + mp->offset - start;
      if (len >= bytes) {
        process_block (extra, mp->part->data + start, bytes);
        bytes = 0;
        break;
      }
      process_block (extra, mp->part->data + start, len);
      bytes -= len;
      mp = mp->next;
    }
    assert (!bytes);
  }
  return x;
}
