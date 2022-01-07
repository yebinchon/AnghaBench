
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
 int TPM_LONG ;
 int TPM_LONG_LONG ;
 int TPM_MEDIUM ;
 int TPM_UNDEFINED ;

__attribute__((used)) static u8 tpm2_ordinal_duration_index(u32 ordinal)
{
 switch (ordinal) {

 case 129:
  return TPM_MEDIUM;

 case 132:
  return TPM_LONG;

 case 138:
  return TPM_LONG;

 case 130:
  return TPM_MEDIUM;
 case 131:
  return TPM_MEDIUM;
 case 140:
  return TPM_MEDIUM;
 case 137:
  return TPM_MEDIUM;

 case 128:
  return TPM_LONG;

 case 133:
  return TPM_MEDIUM;

 case 135:
  return TPM_LONG;
 case 136:
  return TPM_LONG;

 case 139:
  return TPM_MEDIUM;

 case 134:
  return TPM_LONG;

 case 141:
  return TPM_LONG_LONG;
 case 143:
  return TPM_LONG_LONG;
 case 142:
  return TPM_LONG_LONG;

 default:
  return TPM_UNDEFINED;
 }
}
