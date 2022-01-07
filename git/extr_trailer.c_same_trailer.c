
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trailer_item {int dummy; } ;
struct arg_item {int dummy; } ;


 scalar_t__ same_token (struct trailer_item*,struct arg_item*) ;
 scalar_t__ same_value (struct trailer_item*,struct arg_item*) ;

__attribute__((used)) static int same_trailer(struct trailer_item *a, struct arg_item *b)
{
 return same_token(a, b) && same_value(a, b);
}
