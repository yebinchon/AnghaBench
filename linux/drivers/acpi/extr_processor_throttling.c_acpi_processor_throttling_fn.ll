; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_throttling.c_acpi_processor_throttling_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_throttling.c_acpi_processor_throttling_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor_throttling_arg = type { i32, i32, %struct.acpi_processor* }
%struct.acpi_processor = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.acpi_processor*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @acpi_processor_throttling_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @acpi_processor_throttling_fn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.acpi_processor_throttling_arg*, align 8
  %4 = alloca %struct.acpi_processor*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.acpi_processor_throttling_arg*
  store %struct.acpi_processor_throttling_arg* %6, %struct.acpi_processor_throttling_arg** %3, align 8
  %7 = load %struct.acpi_processor_throttling_arg*, %struct.acpi_processor_throttling_arg** %3, align 8
  %8 = getelementptr inbounds %struct.acpi_processor_throttling_arg, %struct.acpi_processor_throttling_arg* %7, i32 0, i32 2
  %9 = load %struct.acpi_processor*, %struct.acpi_processor** %8, align 8
  store %struct.acpi_processor* %9, %struct.acpi_processor** %4, align 8
  %10 = load %struct.acpi_processor*, %struct.acpi_processor** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64 (%struct.acpi_processor*, i32, i32)*, i64 (%struct.acpi_processor*, i32, i32)** %12, align 8
  %14 = load %struct.acpi_processor*, %struct.acpi_processor** %4, align 8
  %15 = load %struct.acpi_processor_throttling_arg*, %struct.acpi_processor_throttling_arg** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_processor_throttling_arg, %struct.acpi_processor_throttling_arg* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.acpi_processor_throttling_arg*, %struct.acpi_processor_throttling_arg** %3, align 8
  %19 = getelementptr inbounds %struct.acpi_processor_throttling_arg, %struct.acpi_processor_throttling_arg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 %13(%struct.acpi_processor* %14, i32 %17, i32 %20)
  ret i64 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
