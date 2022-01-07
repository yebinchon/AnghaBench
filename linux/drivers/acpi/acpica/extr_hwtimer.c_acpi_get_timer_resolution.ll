; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_hwtimer.c_acpi_get_timer_resolution.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_hwtimer.c_acpi_get_timer_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@acpi_gbl_FADT = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ACPI_FADT_32BIT_TIMER = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_get_timer_resolution(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = call i32 @ACPI_FUNCTION_TRACE(i32 (i32*)* @acpi_get_timer_resolution)
  %5 = load i32*, i32** %3, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %9 = call i32 @return_ACPI_STATUS(i32 %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 0), align 4
  %12 = load i32, i32* @ACPI_FADT_32BIT_TIMER, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32*, i32** %3, align 8
  store i32 24, i32* %16, align 4
  br label %19

17:                                               ; preds = %10
  %18 = load i32*, i32** %3, align 8
  store i32 32, i32* %18, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = load i32, i32* @AE_OK, align 4
  %21 = call i32 @return_ACPI_STATUS(i32 %20)
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32 (i32*)*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
