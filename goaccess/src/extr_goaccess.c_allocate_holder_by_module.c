
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GRawData ;
typedef size_t GModule ;


 int LOG_DEBUG (char*) ;
 scalar_t__ holder ;
 int load_holder_data (int *,scalar_t__,size_t,int ) ;
 int * module_sort ;
 int * parse_raw_data (size_t) ;

__attribute__((used)) static void
allocate_holder_by_module (GModule module)
{
  GRawData *raw_data;


  raw_data = parse_raw_data (module);
  if (!raw_data) {
    LOG_DEBUG (("raw data is NULL for module: %d.\n", module));
    return;
  }

  load_holder_data (raw_data, holder + module, module, module_sort[module]);
}
