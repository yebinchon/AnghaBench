
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int ADDED ;
 int SEEN ;
 int SHOWN ;
 TYPE_1__** seen_objects ;
 unsigned int seen_objects_nr ;

__attribute__((used)) static inline void reset_all_seen(void)
{
 unsigned int i;
 for (i = 0; i < seen_objects_nr; ++i) {
  seen_objects[i]->flags &= ~(SEEN | ADDED | SHOWN);
 }
 seen_objects_nr = 0;
}
