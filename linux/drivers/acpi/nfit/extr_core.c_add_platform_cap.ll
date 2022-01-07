; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_add_platform_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_add_platform_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_nfit_desc = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.acpi_nfit_capabilities = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"cap: %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_nfit_desc*, %struct.acpi_nfit_capabilities*)* @add_platform_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_platform_cap(%struct.acpi_nfit_desc* %0, %struct.acpi_nfit_capabilities* %1) #0 {
  %3 = alloca %struct.acpi_nfit_desc*, align 8
  %4 = alloca %struct.acpi_nfit_capabilities*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.acpi_nfit_desc* %0, %struct.acpi_nfit_desc** %3, align 8
  store %struct.acpi_nfit_capabilities* %1, %struct.acpi_nfit_capabilities** %4, align 8
  %7 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %8 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %7, i32 0, i32 1
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.acpi_nfit_capabilities*, %struct.acpi_nfit_capabilities** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_nfit_capabilities, %struct.acpi_nfit_capabilities* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  %14 = shl i32 1, %13
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %6, align 4
  %16 = load %struct.acpi_nfit_capabilities*, %struct.acpi_nfit_capabilities** %4, align 8
  %17 = getelementptr inbounds %struct.acpi_nfit_capabilities, %struct.acpi_nfit_capabilities* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %18, %19
  %21 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %25 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_dbg(%struct.device* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %26)
  ret i32 1
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
