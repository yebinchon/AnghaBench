
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;



__attribute__((used)) static void noop_send_IPI_mask(const struct cpumask *cpumask, int vector) { }
