
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uv__work {int dummy; } ;


 int abort () ;

__attribute__((used)) static void uv__cancelled(struct uv__work* w) {
  abort();
}
