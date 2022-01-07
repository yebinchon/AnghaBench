
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rq_qos_id { ____Placeholder_rq_qos_id } rq_qos_id ;






__attribute__((used)) static inline const char *rq_qos_id_to_name(enum rq_qos_id id)
{
 switch (id) {
 case 128:
  return "wbt";
 case 129:
  return "latency";
 case 130:
  return "cost";
 }
 return "unknown";
}
