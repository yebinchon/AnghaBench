
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_object_store {struct object_directory* odb; } ;
struct object_directory {struct object_directory* next; } ;


 int free_object_directory (struct object_directory*) ;

__attribute__((used)) static void free_object_directories(struct raw_object_store *o)
{
 while (o->odb) {
  struct object_directory *next;

  next = o->odb->next;
  free_object_directory(o->odb);
  o->odb = next;
 }
}
