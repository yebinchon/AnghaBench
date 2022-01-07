
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ qtype ;


 int MAX_QNAME ;
 scalar_t__ get_qtype (char*) ;

int check_qname (char *qname, qtype tp) {
  int i = 0;

  if (qname == ((void*)0)) {
    return 0;
  }

  if (tp != get_qtype (qname)) {
    return 0;
  }

  while (i <= MAX_QNAME && qname[i]) {
    if (!('A' <= qname[i] && qname[i] <= 'Z') && !('a' <= qname[i] && qname[i] <= 'z') &&
        !('0' <= qname[i] && qname[i] <= '9') && !(qname[i] == '_')) {
      return 0;
    }

    i++;
  }

  return 0 < i && i <= MAX_QNAME;
}
