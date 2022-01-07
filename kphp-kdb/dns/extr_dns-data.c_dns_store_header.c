
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int start; int wptr; } ;
struct TYPE_8__ {int id; int flags; int qdcount; int ancount; int nscount; int arcount; } ;
struct TYPE_7__ {int rcode; TYPE_1__ Out; TYPE_3__ header; } ;
typedef TYPE_2__ dns_response_t ;
typedef TYPE_3__ dns_header_t ;
struct TYPE_9__ {int rcode_refused_queries; int rcode_not_implemented_queries; int rcode_name_error_queries; int rcode_server_failure_queries; int rcode_format_queries; int rcode_no_error_queries; } ;


 int assert (int ) ;






 unsigned short htons (int) ;
 TYPE_4__ wstat ;

__attribute__((used)) static int dns_store_header (dns_response_t *r) {
  unsigned short *p = (unsigned short *) r->Out.start;
  dns_header_t *H = &r->header;
  switch (r->rcode) {
    case 131:
      wstat.rcode_no_error_queries++;
      break;
    case 133:
      wstat.rcode_format_queries++;
      break;
    case 128:
      wstat.rcode_server_failure_queries++;
      break;
    case 132:
      wstat.rcode_name_error_queries++;
      break;
    case 130:
      wstat.rcode_not_implemented_queries++;
      break;
    case 129:
      wstat.rcode_refused_queries++;
      break;
    default:
      assert (0);
  }
  p[0] = htons (H->id);
  H->flags |= r->rcode;
  p[1] = htons (H->flags);
  p[2] = htons (H->qdcount);
  p[3] = htons (H->ancount);
  p[4] = htons (H->nscount);
  p[5] = htons (H->arcount);
  return r->Out.wptr - r->Out.start;
}
