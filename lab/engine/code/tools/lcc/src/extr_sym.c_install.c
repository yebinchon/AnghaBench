
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char* name; int scope; struct TYPE_8__* up; } ;
struct entry {TYPE_2__ sym; struct entry* link; } ;
typedef TYPE_1__* Table ;
struct TYPE_7__ {int level; struct entry** buckets; TYPE_2__* all; } ;
typedef TYPE_2__* Symbol ;


 int HASHSIZE ;
 int NEW0 (struct entry*,int) ;
 int assert (int) ;
 TYPE_1__* table (TYPE_1__*,int) ;

Symbol install(const char *name, Table *tpp, int level, int arena) {
 Table tp = *tpp;
 struct entry *p;
 unsigned h = (unsigned long)name&(HASHSIZE-1);

 assert(level == 0 || level >= tp->level);
 if (level > 0 && tp->level < level)
  tp = *tpp = table(tp, level);
 NEW0(p, arena);
 p->sym.name = (char *)name;
 p->sym.scope = level;
 p->sym.up = tp->all;
 tp->all = &p->sym;
 p->link = tp->buckets[h];
 tp->buckets[h] = p;
 return &p->sym;
}
