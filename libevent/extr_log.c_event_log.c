
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*,char const*) ;
 int log_fn (int,char const*) ;
 int stderr ;

__attribute__((used)) static void
event_log(int severity, const char *msg)
{
 if (log_fn)
  log_fn(severity, msg);
 else {
  const char *severity_str;
  switch (severity) {
  case 131:
   severity_str = "debug";
   break;
  case 129:
   severity_str = "msg";
   break;
  case 128:
   severity_str = "warn";
   break;
  case 130:
   severity_str = "err";
   break;
  default:
   severity_str = "???";
   break;
  }
  (void)fprintf(stderr, "[%s] %s\n", severity_str, msg);
 }
}
