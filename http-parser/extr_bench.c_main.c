
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int bench (int,int) ;
 scalar_t__ data_len ;
 int kBytes ;
 scalar_t__ strcmp (char*,char*) ;

int main(int argc, char** argv) {
  int64_t iterations;

  iterations = kBytes / (int64_t) data_len;
  if (argc == 2 && strcmp(argv[1], "infinite") == 0) {
    for (;;)
      bench(iterations, 1);
    return 0;
  } else {
    return bench(iterations, 0);
  }
}
