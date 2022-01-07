
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repl_error {int* error_message; } ;



__attribute__((used)) static int bad_error_packet (struct repl_error *E, int len) {
  return E->error_message[len - sizeof (struct repl_error) - 1];
}
