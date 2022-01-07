
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union frame_entry {int dummy; } frame_entry ;
struct frame {int dummy; } ;
struct bytecode {int nclosures; int nlocals; } ;



__attribute__((used)) static int frame_size(struct bytecode* bc) {
  return sizeof(struct frame) + sizeof(union frame_entry) * (bc->nclosures + bc->nlocals);
}
