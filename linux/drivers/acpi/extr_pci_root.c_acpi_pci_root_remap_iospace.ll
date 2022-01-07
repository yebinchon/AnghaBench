; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_root.c_acpi_pci_root_remap_iospace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_root.c_acpi_pci_root_remap_iospace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }
%struct.resource_entry = type { i8*, %struct.resource* }
%struct.resource = type { i64, i32, i8* }

@IORESOURCE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwnode_handle*, %struct.resource_entry*)* @acpi_pci_root_remap_iospace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_pci_root_remap_iospace(%struct.fwnode_handle* %0, %struct.resource_entry* %1) #0 {
  %3 = alloca %struct.fwnode_handle*, align 8
  %4 = alloca %struct.resource_entry*, align 8
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %3, align 8
  store %struct.resource_entry* %1, %struct.resource_entry** %4, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
