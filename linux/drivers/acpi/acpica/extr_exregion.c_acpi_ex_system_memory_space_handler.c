
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct acpi_mem_space_context {scalar_t__ mapped_physical_address; int mapped_length; scalar_t__ address; scalar_t__ length; void* mapped_logical_address; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_size ;
typedef scalar_t__ acpi_physical_address ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_DEFAULT_PAGE_SIZE ;
 int ACPI_ERROR (int ) ;
 int ACPI_FORMAT_UINT64 (scalar_t__) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_GET16 (void*) ;
 scalar_t__ ACPI_GET32 (void*) ;
 scalar_t__ ACPI_GET64 (void*) ;
 scalar_t__ ACPI_GET8 (void*) ;

 scalar_t__ ACPI_ROUND_UP (scalar_t__,scalar_t__) ;
 int ACPI_SET16 (void*,int) ;
 int ACPI_SET32 (void*,int) ;
 int ACPI_SET64 (void*,int) ;
 int ACPI_SET8 (void*,int) ;

 int AE_AML_ALIGNMENT ;
 int AE_AML_OPERAND_VALUE ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 void* acpi_os_map_memory (scalar_t__,scalar_t__) ;
 int acpi_os_unmap_memory (void*,int) ;
 int acpi_ut_short_divide (int,int,int *,int*) ;
 int ex_system_memory_space_handler ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_system_memory_space_handler(u32 function,
        acpi_physical_address address,
        u32 bit_width,
        u64 *value,
        void *handler_context, void *region_context)
{
 acpi_status status = AE_OK;
 void *logical_addr_ptr = ((void*)0);
 struct acpi_mem_space_context *mem_info = region_context;
 u32 length;
 acpi_size map_length;
 acpi_size page_boundary_map_length;




 ACPI_FUNCTION_TRACE(ex_system_memory_space_handler);



 switch (bit_width) {
 case 8:

  length = 1;
  break;

 case 16:

  length = 2;
  break;

 case 32:

  length = 4;
  break;

 case 64:

  length = 8;
  break;

 default:

  ACPI_ERROR((AE_INFO, "Invalid SystemMemory width %u",
       bit_width));
  return_ACPI_STATUS(AE_AML_OPERAND_VALUE);
 }
 if ((address < mem_info->mapped_physical_address) ||
     (((u64) address + length) > ((u64)
      mem_info->mapped_physical_address +
      mem_info->mapped_length))) {




  if (mem_info->mapped_length) {



   acpi_os_unmap_memory(mem_info->mapped_logical_address,
          mem_info->mapped_length);
  }






  map_length = (acpi_size)
      ((mem_info->address + mem_info->length) - address);
  page_boundary_map_length = (acpi_size)
      (ACPI_ROUND_UP(address, ACPI_DEFAULT_PAGE_SIZE) - address);
  if (page_boundary_map_length == 0) {
   page_boundary_map_length = ACPI_DEFAULT_PAGE_SIZE;
  }

  if (map_length > page_boundary_map_length) {
   map_length = page_boundary_map_length;
  }



  mem_info->mapped_logical_address =
      acpi_os_map_memory(address, map_length);
  if (!mem_info->mapped_logical_address) {
   ACPI_ERROR((AE_INFO,
        "Could not map memory at 0x%8.8X%8.8X, size %u",
        ACPI_FORMAT_UINT64(address),
        (u32)map_length));
   mem_info->mapped_length = 0;
   return_ACPI_STATUS(AE_NO_MEMORY);
  }



  mem_info->mapped_physical_address = address;
  mem_info->mapped_length = map_length;
 }





 logical_addr_ptr = mem_info->mapped_logical_address +
     ((u64) address - (u64) mem_info->mapped_physical_address);

 ACPI_DEBUG_PRINT((ACPI_DB_INFO,
     "System-Memory (width %u) R/W %u Address=%8.8X%8.8X\n",
     bit_width, function, ACPI_FORMAT_UINT64(address)));
 switch (function) {
 case 129:

  *value = 0;
  switch (bit_width) {
  case 8:

   *value = (u64)ACPI_GET8(logical_addr_ptr);
   break;

  case 16:

   *value = (u64)ACPI_GET16(logical_addr_ptr);
   break;

  case 32:

   *value = (u64)ACPI_GET32(logical_addr_ptr);
   break;

  case 64:

   *value = (u64)ACPI_GET64(logical_addr_ptr);
   break;

  default:



   break;
  }
  break;

 case 128:

  switch (bit_width) {
  case 8:

   ACPI_SET8(logical_addr_ptr, *value);
   break;

  case 16:

   ACPI_SET16(logical_addr_ptr, *value);
   break;

  case 32:

   ACPI_SET32(logical_addr_ptr, *value);
   break;

  case 64:

   ACPI_SET64(logical_addr_ptr, *value);
   break;

  default:



   break;
  }
  break;

 default:

  status = AE_BAD_PARAMETER;
  break;
 }

 return_ACPI_STATUS(status);
}
