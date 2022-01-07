
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strlen (char*) ;
 int writeout (char*,scalar_t__) ;
 int writeout_char (int ) ;

__attribute__((used)) static void writeout_string (char *str) {
  if (!str) {
    writeout_char (0);
  } else {
    writeout (str, strlen (str) + 1);
  }
}
