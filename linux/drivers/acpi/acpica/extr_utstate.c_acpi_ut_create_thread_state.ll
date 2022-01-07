; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utstate.c_acpi_ut_create_thread_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utstate.c_acpi_ut_create_thread_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_thread_state = type { i32 }
%union.acpi_generic_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@ACPI_DESC_TYPE_STATE_THREAD = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Invalid zero ID from AcpiOsGetThreadId\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.acpi_thread_state* @acpi_ut_create_thread_state() #0 {
  %1 = alloca %struct.acpi_thread_state*, align 8
  %2 = alloca %union.acpi_generic_state*, align 8
  %3 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %4 = call %union.acpi_generic_state* (...) @acpi_ut_create_generic_state()
  store %union.acpi_generic_state* %4, %union.acpi_generic_state** %2, align 8
  %5 = load %union.acpi_generic_state*, %union.acpi_generic_state** %2, align 8
  %6 = icmp ne %union.acpi_generic_state* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.acpi_thread_state* null, %struct.acpi_thread_state** %1, align 8
  br label %31

8:                                                ; preds = %0
  %9 = load i32, i32* @ACPI_DESC_TYPE_STATE_THREAD, align 4
  %10 = load %union.acpi_generic_state*, %union.acpi_generic_state** %2, align 8
  %11 = bitcast %union.acpi_generic_state* %10 to %struct.TYPE_3__*
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 8
  %13 = call i64 (...) @acpi_os_get_thread_id()
  %14 = load %union.acpi_generic_state*, %union.acpi_generic_state** %2, align 8
  %15 = bitcast %union.acpi_generic_state* %14 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i64 %13, i64* %16, align 8
  %17 = load %union.acpi_generic_state*, %union.acpi_generic_state** %2, align 8
  %18 = bitcast %union.acpi_generic_state* %17 to %struct.TYPE_4__*
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %8
  %23 = load i32, i32* @AE_INFO, align 4
  %24 = call i32 @ACPI_ERROR(i32 ptrtoint ([39 x i8]* @.str to i32))
  %25 = load %union.acpi_generic_state*, %union.acpi_generic_state** %2, align 8
  %26 = bitcast %union.acpi_generic_state* %25 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i64 1, i64* %27, align 8
  br label %28

28:                                               ; preds = %22, %8
  %29 = load %union.acpi_generic_state*, %union.acpi_generic_state** %2, align 8
  %30 = bitcast %union.acpi_generic_state* %29 to %struct.acpi_thread_state*
  store %struct.acpi_thread_state* %30, %struct.acpi_thread_state** %1, align 8
  br label %31

31:                                               ; preds = %28, %7
  %32 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %1, align 8
  ret %struct.acpi_thread_state* %32
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local %union.acpi_generic_state* @acpi_ut_create_generic_state(...) #1

declare dso_local i64 @acpi_os_get_thread_id(...) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
