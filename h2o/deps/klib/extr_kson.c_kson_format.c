
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kson_node_t ;


 int kson_format_recur (int const*,int ) ;
 int putchar (char) ;

void kson_format(const kson_node_t *root)
{
 kson_format_recur(root, 0);
 putchar('\n');
}
