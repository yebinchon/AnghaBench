; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbcmds.c_acpi_db_do_one_sleep_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbcmds.c_acpi_db_do_one_sleep_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_S_STATES_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Sleep state %d out of range (%d max)\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"\0A---- Invoking sleep state S%d (%s):\0A\00", align 1
@acpi_gbl_sleep_state_names = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Could not evaluate [%s] method, %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"Register values for sleep state S%d: Sleep-A: %.2X, Sleep-B: %.2X\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"**** Sleep: Prepare to sleep (S%d) ****\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"**** Sleep: Going to sleep (S%d) ****\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"**** Wake: Prepare to return from sleep (S%d) ****\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"**** Wake: Return from sleep (S%d) ****\0A\00", align 1
@AE_INFO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"During invocation of sleep state S%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @acpi_db_do_one_sleep_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_db_do_one_sleep_state(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @ACPI_S_STATES_MAX, align 8
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @ACPI_S_STATES_MAX, align 8
  %12 = call i32 (i8*, i64, ...) @acpi_os_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %10, i64 %11)
  br label %81

13:                                               ; preds = %1
  %14 = load i64, i64* %2, align 8
  %15 = load i32*, i32** @acpi_gbl_sleep_state_names, align 8
  %16 = load i64, i64* %2, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, i64, ...) @acpi_os_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %14, i32 %18)
  %20 = load i64, i64* %2, align 8
  %21 = call i32 @acpi_get_sleep_type_data(i64 %20, i64* %4, i64* %5)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @ACPI_FAILURE(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %13
  %26 = load i32*, i32** @acpi_gbl_sleep_state_names, align 8
  %27 = load i64, i64* %2, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @acpi_format_exception(i32 %31)
  %33 = call i32 (i8*, i64, ...) @acpi_os_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %30, i32 %32)
  br label %81

34:                                               ; preds = %13
  %35 = load i64, i64* %2, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 (i8*, i64, ...) @acpi_os_printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i64 %35, i64 %36, i64 %37)
  %39 = load i64, i64* %2, align 8
  %40 = call i32 (i8*, i64, ...) @acpi_os_printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %39)
  %41 = load i64, i64* %2, align 8
  %42 = call i32 @acpi_enter_sleep_state_prep(i64 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i64 @ACPI_FAILURE(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %75

47:                                               ; preds = %34
  %48 = load i64, i64* %2, align 8
  %49 = call i32 (i8*, i64, ...) @acpi_os_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i64 %48)
  %50 = load i64, i64* %2, align 8
  %51 = call i32 @acpi_enter_sleep_state(i64 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i64 @ACPI_FAILURE(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %75

56:                                               ; preds = %47
  %57 = load i64, i64* %2, align 8
  %58 = call i32 (i8*, i64, ...) @acpi_os_printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i64 %57)
  %59 = load i64, i64* %2, align 8
  %60 = call i32 @acpi_leave_sleep_state_prep(i64 %59)
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i64 @ACPI_FAILURE(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %75

65:                                               ; preds = %56
  %66 = load i64, i64* %2, align 8
  %67 = call i32 (i8*, i64, ...) @acpi_os_printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i64 %66)
  %68 = load i64, i64* %2, align 8
  %69 = call i32 @acpi_leave_sleep_state(i64 %68)
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = call i64 @ACPI_FAILURE(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %75

74:                                               ; preds = %65
  br label %81

75:                                               ; preds = %73, %64, %55, %46
  %76 = load i32, i32* @AE_INFO, align 4
  %77 = load i32, i32* %3, align 4
  %78 = load i64, i64* %2, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @ACPI_EXCEPTION(i32 %79)
  br label %81

81:                                               ; preds = %75, %74, %25, %9
  ret void
}

declare dso_local i32 @acpi_os_printf(i8*, i64, ...) #1

declare dso_local i32 @acpi_get_sleep_type_data(i64, i64*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_format_exception(i32) #1

declare dso_local i32 @acpi_enter_sleep_state_prep(i64) #1

declare dso_local i32 @acpi_enter_sleep_state(i64) #1

declare dso_local i32 @acpi_leave_sleep_state_prep(i64) #1

declare dso_local i32 @acpi_leave_sleep_state(i64) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
