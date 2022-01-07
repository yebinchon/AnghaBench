; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbcmds.c_acpi_db_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbcmds.c_acpi_db_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"Invoking all possible sleep states, 0-%d\0A\00", align 1
@ACPI_S_STATES_MAX = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_db_sleep(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = call i32 @ACPI_FUNCTION_TRACE(i32 (i8*)* @acpi_db_sleep)
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* @ACPI_S_STATES_MAX, align 8
  %11 = call i32 @acpi_os_printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %10)
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %19, %9
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @ACPI_S_STATES_MAX, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @acpi_db_do_one_sleep_state(i64 %17)
  br label %19

19:                                               ; preds = %16
  %20 = load i64, i64* %5, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %5, align 8
  br label %12

22:                                               ; preds = %12
  %23 = load i32, i32* @AE_OK, align 4
  %24 = call i32 @return_ACPI_STATUS(i32 %23)
  br label %25

25:                                               ; preds = %22, %1
  %26 = load i8*, i8** %3, align 8
  %27 = call i64 @strtoul(i8* %26, i32* null, i32 0)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @acpi_db_do_one_sleep_state(i64 %28)
  %30 = load i32, i32* @AE_OK, align 4
  %31 = call i32 @return_ACPI_STATUS(i32 %30)
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32 (i8*)*) #1

declare dso_local i32 @acpi_os_printf(i8*, i64) #1

declare dso_local i32 @acpi_db_do_one_sleep_state(i64) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
