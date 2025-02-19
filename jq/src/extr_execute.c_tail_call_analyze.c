
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 scalar_t__ CALL_JQ ;
 scalar_t__ TAIL_CALL_JQ ;
 int assert (int) ;
 scalar_t__ ret_follows (scalar_t__*) ;

__attribute__((used)) static uint16_t tail_call_analyze(uint16_t *pc) {
  assert(*pc == CALL_JQ);
  pc++;

  for (uint16_t nclosures = *pc++ + 1; nclosures > 0; pc++, nclosures--) {
    if (*pc++ == 0)
      return CALL_JQ;
  }
  if (ret_follows(pc))
    return TAIL_CALL_JQ;
  return CALL_JQ;
}
