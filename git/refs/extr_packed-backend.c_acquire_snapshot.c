
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snapshot {int referrers; } ;



__attribute__((used)) static void acquire_snapshot(struct snapshot *snapshot)
{
 snapshot->referrers++;
}
