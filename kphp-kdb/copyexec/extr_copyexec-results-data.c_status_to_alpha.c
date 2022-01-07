
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *status_to_alpha (int tp) {
  switch (tp) {
    case 129:
      return "running";
    case 132:
      return "ignored";
      break;
    case 131:
      return "interrupted";
      break;
    case 135:
      return "cancelled";
      break;
    case 128:
      return "terminated";
      break;
    case 133:
      return "failed";
      break;
    case 134:
      return "decryption_failed";
      break;
    case 130:
      return "io_failed";
    default:
      return "unknown";
  }
}
