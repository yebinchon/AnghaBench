
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* git__tsort_cmp ) (void const*,void const*) ;


 int stub1 (void const*,void const*) ;

__attribute__((used)) static int tsort_r_cmp(const void *a, const void *b, void *payload)
{
 return ((git__tsort_cmp)payload)(a, b);
}
