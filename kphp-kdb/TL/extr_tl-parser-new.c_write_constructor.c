
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_constructor {int dummy; } ;


 int TLS_COMBINATOR ;
 int schema_version ;
 int wint (int) ;
 int write_combinator (struct tl_constructor*) ;

void write_constructor (struct tl_constructor *c) {
  wint (schema_version >= 1 ? TLS_COMBINATOR : 2);
  write_combinator (c);
}
