; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_nfit.h___to_nfit_memdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_nfit.h___to_nfit_memdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_nfit_memory_map = type { i32 }
%struct.nfit_mem = type { %struct.acpi_nfit_memory_map*, %struct.acpi_nfit_memory_map* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpi_nfit_memory_map* (%struct.nfit_mem*)* @__to_nfit_memdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpi_nfit_memory_map* @__to_nfit_memdev(%struct.nfit_mem* %0) #0 {
  %2 = alloca %struct.acpi_nfit_memory_map*, align 8
  %3 = alloca %struct.nfit_mem*, align 8
  store %struct.nfit_mem* %0, %struct.nfit_mem** %3, align 8
  %4 = load %struct.nfit_mem*, %struct.nfit_mem** %3, align 8
  %5 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %4, i32 0, i32 1
  %6 = load %struct.acpi_nfit_memory_map*, %struct.acpi_nfit_memory_map** %5, align 8
  %7 = icmp ne %struct.acpi_nfit_memory_map* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.nfit_mem*, %struct.nfit_mem** %3, align 8
  %10 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %9, i32 0, i32 1
  %11 = load %struct.acpi_nfit_memory_map*, %struct.acpi_nfit_memory_map** %10, align 8
  store %struct.acpi_nfit_memory_map* %11, %struct.acpi_nfit_memory_map** %2, align 8
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.nfit_mem*, %struct.nfit_mem** %3, align 8
  %14 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %13, i32 0, i32 0
  %15 = load %struct.acpi_nfit_memory_map*, %struct.acpi_nfit_memory_map** %14, align 8
  store %struct.acpi_nfit_memory_map* %15, %struct.acpi_nfit_memory_map** %2, align 8
  br label %16

16:                                               ; preds = %12, %8
  %17 = load %struct.acpi_nfit_memory_map*, %struct.acpi_nfit_memory_map** %2, align 8
  ret %struct.acpi_nfit_memory_map* %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
