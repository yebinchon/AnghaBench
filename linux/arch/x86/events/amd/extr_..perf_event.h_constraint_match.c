
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct event_constraint {scalar_t__ cmask; scalar_t__ code; scalar_t__ size; } ;



__attribute__((used)) static inline bool constraint_match(struct event_constraint *c, u64 ecode)
{
 return ((ecode & c->cmask) - c->code) <= (u64)c->size;
}
