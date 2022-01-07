; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_watchdog.c_acpi_watchdog_get_wdat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_watchdog.c_acpi_watchdog_get_wdat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_wdat = type { i32 }
%struct.acpi_table_header = type { i32 }

@acpi_disabled = common dso_local global i64 0, align 8
@ACPI_SIG_WDAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Skipping WDAT on this system because it uses RTC SRAM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpi_table_wdat* ()* @acpi_watchdog_get_wdat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpi_table_wdat* @acpi_watchdog_get_wdat() #0 {
  %1 = alloca %struct.acpi_table_wdat*, align 8
  %2 = alloca %struct.acpi_table_wdat*, align 8
  %3 = alloca i32, align 4
  store %struct.acpi_table_wdat* null, %struct.acpi_table_wdat** %2, align 8
  %4 = load i64, i64* @acpi_disabled, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store %struct.acpi_table_wdat* null, %struct.acpi_table_wdat** %1, align 8
  br label %23

7:                                                ; preds = %0
  %8 = load i32, i32* @ACPI_SIG_WDAT, align 4
  %9 = bitcast %struct.acpi_table_wdat** %2 to %struct.acpi_table_header**
  %10 = call i32 @acpi_get_table(i32 %8, i32 0, %struct.acpi_table_header** %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @ACPI_FAILURE(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  store %struct.acpi_table_wdat* null, %struct.acpi_table_wdat** %1, align 8
  br label %23

15:                                               ; preds = %7
  %16 = load %struct.acpi_table_wdat*, %struct.acpi_table_wdat** %2, align 8
  %17 = call i64 @acpi_watchdog_uses_rtc(%struct.acpi_table_wdat* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @pr_info(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store %struct.acpi_table_wdat* null, %struct.acpi_table_wdat** %1, align 8
  br label %23

21:                                               ; preds = %15
  %22 = load %struct.acpi_table_wdat*, %struct.acpi_table_wdat** %2, align 8
  store %struct.acpi_table_wdat* %22, %struct.acpi_table_wdat** %1, align 8
  br label %23

23:                                               ; preds = %21, %19, %14, %6
  %24 = load %struct.acpi_table_wdat*, %struct.acpi_table_wdat** %1, align 8
  ret %struct.acpi_table_wdat* %24
}

declare dso_local i32 @acpi_get_table(i32, i32, %struct.acpi_table_header**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i64 @acpi_watchdog_uses_rtc(%struct.acpi_table_wdat*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
