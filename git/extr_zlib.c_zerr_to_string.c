
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *zerr_to_string(int status)
{
 switch (status) {
 case 131:
  return "out of memory";
 case 128:
  return "wrong version";
 case 130:
  return "needs dictionary";
 case 132:
  return "data stream error";
 case 129:
  return "stream consistency error";
 default:
  return "unknown error";
 }
}
