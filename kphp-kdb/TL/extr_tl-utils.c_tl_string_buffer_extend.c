
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_buffer {int size; int buff; scalar_t__ pos; } ;


 int TL_STRING_BUFFER_MIN_SIZE ;
 int assert (int ) ;
 int fprintf (int ,char*,int) ;
 int malloc (int) ;
 int realloc (int ,int) ;
 int stderr ;
 int verbosity ;

__attribute__((used)) static void tl_string_buffer_extend (struct tl_buffer *b) {
  if (verbosity >= 4) {
    fprintf (stderr, "tl_string_buffer_extend: b->size (%d)\n", b->size);
  }
  if (b->size == 0) {
    b->size = TL_STRING_BUFFER_MIN_SIZE;
    b->buff = malloc (b->size);
    b->pos = 0;
    return;
  }
  b->size *= 2;
  b->buff = realloc (b->buff, b->size);
  assert (b->buff);
}
