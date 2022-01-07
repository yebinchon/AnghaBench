
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct note_create_payload {scalar_t__ seen; int * note_oid; } ;


 int cl_assert_equal_i (size_t,size_t) ;

void assert_notes_seen(struct note_create_payload payload[], size_t n)
{
 size_t seen = 0, i;

 for (i = 0; payload[i].note_oid != ((void*)0); i++) {
  if (payload[i].seen)
   seen++;
 }

 cl_assert_equal_i(seen, n);
}
