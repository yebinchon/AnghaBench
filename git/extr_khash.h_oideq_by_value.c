
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int oideq (struct object_id*,struct object_id*) ;

__attribute__((used)) static inline int oideq_by_value(struct object_id a, struct object_id b)
{
 return oideq(&a, &b);
}
