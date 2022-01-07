
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit_ {int cur; } ;
typedef int rlim_t_ ;


 int current ;
 int die (char*,int) ;
 scalar_t__ rlimit_get (int ,int,struct rlimit_*) ;

rlim_t_ rlimit(int resource) {
    struct rlimit_ limit;
    if (rlimit_get(current, resource, &limit) != 0)
        die("invalid resource %d", resource);
    return limit.cur;
}
