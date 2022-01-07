; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exmutex.c_acpi_ex_release_all_mutexes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exmutex.c_acpi_ex_release_all_mutexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32*, i64, %union.acpi_operand_object*, i32*, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.acpi_thread_state = type { i32, %union.acpi_operand_object* }

@ex_release_all_mutexes = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Mutex [%4.4s] force-release, SyncLevel %u Depth %u\0A\00", align 1
@acpi_gbl_global_lock_mutex = common dso_local global %union.acpi_operand_object* null, align 8
@return_VOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ex_release_all_mutexes(%struct.acpi_thread_state* %0) #0 {
  %2 = alloca %struct.acpi_thread_state*, align 8
  %3 = alloca %union.acpi_operand_object*, align 8
  %4 = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_thread_state* %0, %struct.acpi_thread_state** %2, align 8
  %5 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %2, align 8
  %6 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %5, i32 0, i32 1
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  store %union.acpi_operand_object* %7, %union.acpi_operand_object** %3, align 8
  %8 = load i32, i32* @ex_release_all_mutexes, align 4
  %9 = call i32 @ACPI_FUNCTION_TRACE(i32 %8)
  br label %10

10:                                               ; preds = %44, %1
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %12 = icmp ne %union.acpi_operand_object* %11, null
  br i1 %12, label %13, label %70

13:                                               ; preds = %10
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  store %union.acpi_operand_object* %14, %union.acpi_operand_object** %4, align 8
  %15 = load i32, i32* @ACPI_DB_EXEC, align 4
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %17 = bitcast %union.acpi_operand_object* %16 to %struct.TYPE_6__*
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %24 = bitcast %union.acpi_operand_object* %23 to %struct.TYPE_6__*
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 8
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %28 = bitcast %union.acpi_operand_object* %27 to %struct.TYPE_6__*
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @ACPI_DEBUG_PRINT(i32 %31)
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** @acpi_gbl_global_lock_mutex, align 8
  %35 = icmp eq %union.acpi_operand_object* %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %13
  %37 = call i32 (...) @acpi_ev_release_global_lock()
  br label %44

38:                                               ; preds = %13
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %40 = bitcast %union.acpi_operand_object* %39 to %struct.TYPE_6__*
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @acpi_os_release_mutex(i32 %42)
  br label %44

44:                                               ; preds = %38, %36
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %46 = bitcast %union.acpi_operand_object* %45 to %struct.TYPE_6__*
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %2, align 8
  %50 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %52 = bitcast %union.acpi_operand_object* %51 to %struct.TYPE_6__*
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %53, align 8
  store %union.acpi_operand_object* %54, %union.acpi_operand_object** %3, align 8
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %56 = bitcast %union.acpi_operand_object* %55 to %struct.TYPE_6__*
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  store i32* null, i32** %57, align 8
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %59 = bitcast %union.acpi_operand_object* %58 to %struct.TYPE_6__*
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %60, align 8
  %61 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %62 = bitcast %union.acpi_operand_object* %61 to %struct.TYPE_6__*
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %65 = bitcast %union.acpi_operand_object* %64 to %struct.TYPE_6__*
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store i32* null, i32** %66, align 8
  %67 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %68 = bitcast %union.acpi_operand_object* %67 to %struct.TYPE_6__*
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  br label %10

70:                                               ; preds = %10
  %71 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ev_release_global_lock(...) #1

declare dso_local i32 @acpi_os_release_mutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
