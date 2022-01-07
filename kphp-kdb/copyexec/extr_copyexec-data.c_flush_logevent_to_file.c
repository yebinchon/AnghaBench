
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffered_logevent {unsigned int* data; } ;


 scalar_t__ EINTR ;
 int assert (int) ;
 unsigned int compute_crc32 (int ,int) ;
 int cur_transaction_id ;
 scalar_t__ errno ;
 int fd_transaction_logevents ;
 int free (unsigned int*) ;
 int memcpy (int*,unsigned int*,int) ;
 int vkprintf (int,char*,int,int ,char*) ;
 int write (int ,unsigned int*,int) ;

__attribute__((used)) static void flush_logevent_to_file (struct buffered_logevent *L) {
  int size;
  memcpy (&size, L->data, 4);
  unsigned logevent_crc32 = compute_crc32 (L->data + 8, size);
  memcpy (L->data + 4, &logevent_crc32, 4);
  size += 8;
  int bytes_written;
  do {
    bytes_written = write (fd_transaction_logevents, L->data, size);
  } while (bytes_written < 0 && errno == EINTR);
  assert (bytes_written == size);
  vkprintf (3, "%d bytes to logevent file from tr%d was written (%.4s)\n", size, cur_transaction_id, ((char *) L->data) + 8);
  free (L->data);
  L->data = ((void*)0);
}
