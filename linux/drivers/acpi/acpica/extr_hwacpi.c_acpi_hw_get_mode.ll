; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_hwacpi.c_acpi_hw_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_hwacpi.c_acpi_hw_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@hw_get_mode = common dso_local global i32 0, align 4
@acpi_gbl_reduced_hardware = common dso_local global i64 0, align 8
@ACPI_SYS_MODE_ACPI = common dso_local global i32 0, align 4
@acpi_gbl_FADT = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ACPI_BITREG_SCI_ENABLE = common dso_local global i32 0, align 4
@ACPI_SYS_MODE_LEGACY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_hw_get_mode() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i32, i32* @hw_get_mode, align 4
  %5 = call i32 @ACPI_FUNCTION_TRACE(i32 %4)
  %6 = load i64, i64* @acpi_gbl_reduced_hardware, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @ACPI_SYS_MODE_ACPI, align 4
  %10 = call i32 @return_UINT32(i32 %9)
  br label %11

11:                                               ; preds = %8, %0
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 0), align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @ACPI_SYS_MODE_ACPI, align 4
  %16 = call i32 @return_UINT32(i32 %15)
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i32, i32* @ACPI_BITREG_SCI_ENABLE, align 4
  %19 = call i32 @acpi_read_bit_register(i32 %18, i64* %3)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i64 @ACPI_FAILURE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @ACPI_SYS_MODE_LEGACY, align 4
  %25 = call i32 @return_UINT32(i32 %24)
  br label %26

26:                                               ; preds = %23, %17
  %27 = load i64, i64* %3, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @ACPI_SYS_MODE_ACPI, align 4
  %31 = call i32 @return_UINT32(i32 %30)
  br label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @ACPI_SYS_MODE_LEGACY, align 4
  %34 = call i32 @return_UINT32(i32 %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i64, i64* %1, align 8
  ret i64 %36
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_UINT32(i32) #1

declare dso_local i32 @acpi_read_bit_register(i32, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
