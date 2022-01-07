
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {unsigned long long proc_id; int pblk_length; scalar_t__ pblk_address; } ;
union acpi_object {TYPE_3__ processor; int member_0; } ;
struct TYPE_6__ {int duty_width; int duty_offset; scalar_t__ address; } ;
struct TYPE_5__ {int bm_control; } ;
struct acpi_processor {unsigned long long acpi_id; int id; int handle; scalar_t__ pblk; TYPE_2__ throttling; int phys_id; TYPE_1__ flags; } ;
struct acpi_device {int dev; } ;
struct acpi_buffer {int member_0; union acpi_object* member_1; } ;
typedef int acpi_status ;
struct TYPE_8__ {int duty_width; int duty_offset; scalar_t__ pm2_control_length; scalar_t__ pm2_control_block; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int) ;
 int ACPI_PROCESSOR_OBJECT_HID ;
 scalar_t__ ACPI_SUCCESS (int) ;
 int AE_OK ;
 int ENODEV ;
 char* METHOD_NAME__UID ;
 int acpi_device_bid (struct acpi_device*) ;
 int acpi_device_hid (struct acpi_device*) ;
 struct acpi_processor* acpi_driver_data (struct acpi_device*) ;
 scalar_t__ acpi_duplicate_processor_id (unsigned long long) ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int acpi_evaluate_object (int ,int *,int *,struct acpi_buffer*) ;
 TYPE_4__ acpi_gbl_FADT ;
 int acpi_get_phys_id (int ,int,int) ;
 int acpi_handle_debug (int ,char*) ;
 int acpi_has_cpu_in_madt () ;
 int acpi_map_cpuid (int ,int) ;
 int acpi_processor_errata () ;
 int acpi_processor_hotadd_init (struct acpi_processor*) ;
 int arch_fix_phys_package_id (int,unsigned long long) ;
 int cpu_present (int) ;
 int dev_err (int *,char*,int) ;
 int dev_info_once (int *,char*) ;
 scalar_t__ invalid_logical_cpuid (int) ;
 scalar_t__ invalid_phys_cpuid (int ) ;
 int num_online_cpus () ;
 int sprintf (int ,char*,int) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int acpi_processor_get_info(struct acpi_device *device)
{
 union acpi_object object = { 0 };
 struct acpi_buffer buffer = { sizeof(union acpi_object), &object };
 struct acpi_processor *pr = acpi_driver_data(device);
 int device_declaration = 0;
 acpi_status status = AE_OK;
 static int cpu0_initialized;
 unsigned long long value;

 acpi_processor_errata();





 if (acpi_gbl_FADT.pm2_control_block && acpi_gbl_FADT.pm2_control_length) {
  pr->flags.bm_control = 1;
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "Bus mastering arbitration control present\n"));
 } else
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "No bus mastering arbitration control\n"));

 if (!strcmp(acpi_device_hid(device), ACPI_PROCESSOR_OBJECT_HID)) {

  status = acpi_evaluate_object(pr->handle, ((void*)0), ((void*)0), &buffer);
  if (ACPI_FAILURE(status)) {
   dev_err(&device->dev,
    "Failed to evaluate processor object (0x%x)\n",
    status);
   return -ENODEV;
  }

  pr->acpi_id = object.processor.proc_id;
 } else {




  status = acpi_evaluate_integer(pr->handle, METHOD_NAME__UID,
      ((void*)0), &value);
  if (ACPI_FAILURE(status)) {
   dev_err(&device->dev,
    "Failed to evaluate processor _UID (0x%x)\n",
    status);
   return -ENODEV;
  }
  device_declaration = 1;
  pr->acpi_id = value;
 }

 if (acpi_duplicate_processor_id(pr->acpi_id)) {
  if (pr->acpi_id == 0xff)
   dev_info_once(&device->dev,
    "Entry not well-defined, consider updating BIOS\n");
  else
   dev_err(&device->dev,
    "Failed to get unique processor _UID (0x%x)\n",
    pr->acpi_id);
  return -ENODEV;
 }

 pr->phys_id = acpi_get_phys_id(pr->handle, device_declaration,
     pr->acpi_id);
 if (invalid_phys_cpuid(pr->phys_id))
  acpi_handle_debug(pr->handle, "failed to get CPU physical ID.\n");

 pr->id = acpi_map_cpuid(pr->phys_id, pr->acpi_id);
 if (!cpu0_initialized && !acpi_has_cpu_in_madt()) {
  cpu0_initialized = 1;




  if (invalid_logical_cpuid(pr->id) && (num_online_cpus() == 1))
   pr->id = 0;
 }
 if (invalid_logical_cpuid(pr->id) || !cpu_present(pr->id)) {
  int ret = acpi_processor_hotadd_init(pr);
  if (ret)
   return ret;
 }
 sprintf(acpi_device_bid(device), "CPU%X", pr->id);
 ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Processor [%d:%d]\n", pr->id,
     pr->acpi_id));

 if (!object.processor.pblk_address)
  ACPI_DEBUG_PRINT((ACPI_DB_INFO, "No PBLK (NULL address)\n"));
 else if (object.processor.pblk_length != 6)
  dev_err(&device->dev, "Invalid PBLK length [%d]\n",
       object.processor.pblk_length);
 else {
  pr->throttling.address = object.processor.pblk_address;
  pr->throttling.duty_offset = acpi_gbl_FADT.duty_offset;
  pr->throttling.duty_width = acpi_gbl_FADT.duty_width;

  pr->pblk = object.processor.pblk_address;
 }






 status = acpi_evaluate_integer(pr->handle, "_SUN", ((void*)0), &value);
 if (ACPI_SUCCESS(status))
  arch_fix_phys_package_id(pr->id, value);

 return 0;
}
