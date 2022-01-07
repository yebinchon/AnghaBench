
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arglist {int dummy; } ;


 int TRANS_HYBRID ;
 int TRANS_HYBRID_LEN ;
 int TRANS_RAW ;
 int TRANS_RAW_LEN ;
 int TRANS_TAP ;
 int TRANS_TAP_LEN ;
 int VECTOR_BPF ;
 int VECTOR_QDISC_BYPASS ;
 int VECTOR_RX ;
 int VECTOR_TX ;
 scalar_t__ kstrtoul (char*,int,long*) ;
 scalar_t__ strncmp (char*,int ,int ) ;
 char* uml_vector_fetch_arg (struct arglist*,char*) ;

__attribute__((used)) static int get_transport_options(struct arglist *def)
{
 char *transport = uml_vector_fetch_arg(def, "transport");
 char *vector = uml_vector_fetch_arg(def, "vec");

 int vec_rx = VECTOR_RX;
 int vec_tx = VECTOR_TX;
 long parsed;

 if (vector != ((void*)0)) {
  if (kstrtoul(vector, 10, &parsed) == 0) {
   if (parsed == 0) {
    vec_rx = 0;
    vec_tx = 0;
   }
  }
 }


 if (strncmp(transport, TRANS_TAP, TRANS_TAP_LEN) == 0)
  return 0;
 if (strncmp(transport, TRANS_HYBRID, TRANS_HYBRID_LEN) == 0)
  return (vec_rx | VECTOR_BPF);
 if (strncmp(transport, TRANS_RAW, TRANS_RAW_LEN) == 0)
  return (vec_rx | vec_tx | VECTOR_QDISC_BYPASS);
 return (vec_rx | vec_tx);
}
