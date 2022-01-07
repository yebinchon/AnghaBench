
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TLS_SCHEMA ;
 int TLS_SCHEMA_V2 ;

int get_schema_version (int a) {
  if (a == TLS_SCHEMA) {
    return 1;
  } if (a == TLS_SCHEMA_V2) {
    return 2;
  } else {
    return -1;
  }
}
