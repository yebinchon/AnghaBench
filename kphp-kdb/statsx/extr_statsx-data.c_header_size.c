
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_header_v2 {int dummy; } ;
struct index_header_v1 {int dummy; } ;


 int assert (int ) ;
 int index_version ;

int header_size (void) {
  if (index_version == 1 || index_version == 0) {
    return sizeof (struct index_header_v1);
  } else if (index_version == 2) {
    return sizeof (struct index_header_v2);
  } else if (index_version == 3) {
    return sizeof (struct index_header_v2);
  } else if (index_version == 4) {
    return sizeof (struct index_header_v2);
  } else {
    assert (0);
    return 0;
  }
}
