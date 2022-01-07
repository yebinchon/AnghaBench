
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cacheinfo {int level; } ;



__attribute__((used)) static inline bool cache_leaves_are_shared(struct cacheinfo *this_leaf,
        struct cacheinfo *sib_leaf)
{





 return !(this_leaf->level == 1);
}
