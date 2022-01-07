
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter_device {int dummy; } ;
struct counter_count {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t quad8_count_floor_read(struct counter_device *counter,
 struct counter_count *count, void *private, char *buf)
{

 return sprintf(buf, "0\n");
}
