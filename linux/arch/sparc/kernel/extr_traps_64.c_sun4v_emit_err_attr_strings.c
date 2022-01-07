
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 int ARRAY_SIZE (char const**) ;
 unsigned int SUN4V_ERR_ATTRS_MODE_MSK ;
 unsigned int SUN4V_ERR_ATTRS_MODE_SHFT ;
 unsigned int SUN4V_ERR_ATTRS_RES_QUEUE_FULL ;
 unsigned int SUN4V_ERR_ATTRS_SPSTATE_MSK ;
 unsigned int SUN4V_ERR_ATTRS_SPSTATE_SHFT ;
 int pr_cont (char*,...) ;

__attribute__((used)) static void sun4v_emit_err_attr_strings(u32 attrs)
{
 static const char *attr_names[] = {
  "processor",
  "memory",
  "PIO",
  "int-registers",
  "fpu-registers",
  "shutdown-request",
  "ASR",
  "ASI",
  "priv-reg",
 };
 static const char *sp_states[] = {
  "sp-faulted",
  "sp-available",
  "sp-not-present",
  "sp-state-reserved",
 };
 static const char *modes[] = {
  "mode-reserved0",
  "user",
  "priv",
  "mode-reserved1",
 };
 u32 sp_state, mode;
 int i;

 for (i = 0; i < ARRAY_SIZE(attr_names); i++) {
  if (attrs & (1U << i)) {
   const char *s = attr_names[i];

   pr_cont("%s ", s);
  }
 }

 sp_state = ((attrs & SUN4V_ERR_ATTRS_SPSTATE_MSK) >>
      SUN4V_ERR_ATTRS_SPSTATE_SHFT);
 pr_cont("%s ", sp_states[sp_state]);

 mode = ((attrs & SUN4V_ERR_ATTRS_MODE_MSK) >>
  SUN4V_ERR_ATTRS_MODE_SHFT);
 pr_cont("%s ", modes[mode]);

 if (attrs & SUN4V_ERR_ATTRS_RES_QUEUE_FULL)
  pr_cont("res-queue-full ");
}
