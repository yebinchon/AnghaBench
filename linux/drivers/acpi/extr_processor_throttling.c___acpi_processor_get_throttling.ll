; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_throttling.c___acpi_processor_get_throttling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_throttling.c___acpi_processor_get_throttling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.acpi_processor.0*)* }
%struct.acpi_processor.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @__acpi_processor_get_throttling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__acpi_processor_get_throttling(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.acpi_processor*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.acpi_processor*
  store %struct.acpi_processor* %5, %struct.acpi_processor** %3, align 8
  %6 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %7 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64 (%struct.acpi_processor.0*)*, i64 (%struct.acpi_processor.0*)** %8, align 8
  %10 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %11 = bitcast %struct.acpi_processor* %10 to %struct.acpi_processor.0*
  %12 = call i64 %9(%struct.acpi_processor.0* %11)
  ret i64 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
