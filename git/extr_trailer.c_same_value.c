
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trailer_item {int value; } ;
struct arg_item {int value; } ;


 int strcasecmp (int ,int ) ;

__attribute__((used)) static int same_value(struct trailer_item *a, struct arg_item *b)
{
 return !strcasecmp(a->value, b->value);
}
