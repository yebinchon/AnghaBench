
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,...) ;
 int fputc (char const,int ) ;
 int stderr ;

__attribute__((used)) static void python_dump (const char *s, const char *e) {
  fprintf (stderr, "packet = \"");
  while (s != e) {
    if (*s >= 32 && *s < 128 && *s != '"' && *s != '\'' && *s != '\\') {
      fputc (*s, stderr);
    } else {
      fprintf (stderr, "\\x%02x", (int) ((unsigned char) *s));
    }
    s++;
  }
  fprintf (stderr, "\"\n");
}
