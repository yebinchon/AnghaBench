
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;



__attribute__((used)) static bool skd_inc_in_flight(struct request *rq, void *data, bool reserved)
{
 int *count = data;

 count++;
 return 1;
}
