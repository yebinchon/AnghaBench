
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bytecode {struct bytecode* parent; } ;



__attribute__((used)) static struct bytecode* getlevel(struct bytecode* bc, int level) {
  while (level > 0) {
    bc = bc->parent;
    level--;
  }
  return bc;
}
