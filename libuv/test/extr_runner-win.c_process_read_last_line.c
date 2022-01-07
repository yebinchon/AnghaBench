
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int stdio_out; } ;
typedef TYPE_1__ process_info_t ;
struct TYPE_7__ {size_t Offset; } ;
typedef TYPE_2__ OVERLAPPED ;
typedef size_t DWORD ;


 int ASSERT (int) ;
 size_t GetFileSize (int ,int *) ;
 size_t INVALID_FILE_SIZE ;
 int ReadFile (int ,char*,size_t,size_t*,TYPE_2__*) ;
 int memmove (char*,char*,size_t) ;
 int memset (TYPE_2__*,int ,int) ;

int process_read_last_line(process_info_t *p,
                           char * buffer,
                           size_t buffer_len) {
  DWORD size;
  DWORD read;
  DWORD start;
  OVERLAPPED overlapped;

  ASSERT(buffer_len > 0);

  size = GetFileSize(p->stdio_out, ((void*)0));
  if (size == INVALID_FILE_SIZE)
    return -1;

  if (size == 0) {
    buffer[0] = '\0';
    return 1;
  }

  memset(&overlapped, 0, sizeof overlapped);
  if (size >= buffer_len)
    overlapped.Offset = size - buffer_len - 1;

  if (!ReadFile(p->stdio_out, buffer, buffer_len - 1, &read, &overlapped))
    return -1;

  start = read;
  while (start-- > 0) {
    if (buffer[start] == '\n' || buffer[start] == '\r')
      break;
  }

  if (start > 0)
    memmove(buffer, buffer + start, read - start);

  buffer[read - start] = '\0';

  return 0;
}
