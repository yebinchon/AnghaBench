
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repl_server_status {char* buffer; int buffer_size; } ;



inline unsigned char load_byte (struct repl_server_status *S, char **ptr) {
  --*ptr;
  if (*ptr < S->buffer) {
    *ptr += S->buffer_size;
  }
  return (unsigned char)**ptr;
}
