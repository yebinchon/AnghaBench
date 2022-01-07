
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,...) ;
 int out ;
__attribute__((used)) static void dump_ts (int tp) {
  switch (tp & 255) {
    case 129:
      fprintf (out, "running");
      break;
    case 132:
      fprintf (out, "ignored");
      break;
    case 131:
      fprintf (out, "interrupted");
      break;
    case 135:
      fprintf (out, "cancelled");
      break;
    case 128:
      fprintf (out, "terminated");
      break;
    case 133:
      fprintf (out, "failed");
      break;
    case 134:
      fprintf (out, "decryption_failed");
      break;
    case 130:
      fprintf (out, "io_failed");
      break;
    default:
      fprintf (out, "%d", tp);
  }
}
