
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct news_id {scalar_t__ type; scalar_t__ owner; int place; } ;



__attribute__((used)) static int news_id_compare (struct news_id id1, struct news_id id2) {
  if (id1.type != id2.type) { return id1.type - id2.type; }
  if (id1.owner != id2.owner) { return id1.owner - id2.owner; }
  return id1.place - id2.place;
}
