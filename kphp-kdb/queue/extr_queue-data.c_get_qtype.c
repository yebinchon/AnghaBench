
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qtype ;


 int Q_DEF ;
 int Q_NEWS ;
 int Q_WATCHCAT ;

qtype get_qtype (char *qname) {
  if (qname[0] == 'w' && qname[1] == '_') {
    return Q_WATCHCAT;
  }
  if (qname[0] == 'n' && qname[1] == '_') {
    return Q_NEWS;
  }
  return Q_DEF;
}
