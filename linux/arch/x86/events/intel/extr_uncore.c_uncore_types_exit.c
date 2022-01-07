
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore_type {int dummy; } ;


 int uncore_type_exit (struct intel_uncore_type*) ;

__attribute__((used)) static void uncore_types_exit(struct intel_uncore_type **types)
{
 for (; *types; types++)
  uncore_type_exit(*types);
}
