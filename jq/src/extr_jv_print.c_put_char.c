
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int FILE ;


 int put_buf (char*,int,int *,int *,int) ;

__attribute__((used)) static void put_char(char c, FILE* fout, jv* strout, int T) {
  put_buf(&c, 1, fout, strout, T);
}
