
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rating; scalar_t__ type; scalar_t__ object_id; } ;
typedef TYPE_1__ gh_entry_t ;



__attribute__((used)) static inline int gh_entry_less (gh_entry_t *lhs, gh_entry_t *rhs) {
  return (lhs->rating > rhs->rating + 1e-9 || (lhs->rating >= rhs->rating - 1e-9 &&
          (lhs->type < rhs->type || (lhs->type == rhs->type && lhs->object_id < rhs->object_id))));
}
