; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exmutex.c_acpi_ex_acquire_mutex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exmutex.c_acpi_ex_acquire_mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.acpi_walk_state = type { %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i64 }

@ex_acquire_mutex = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Cannot acquire Mutex [%4.4s], null thread info\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"Cannot acquire Mutex [%4.4s], current SyncLevel is too large (%u)\00", align 1
@AE_AML_MUTEX_ORDER = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [69 x i8] c"Acquiring: Mutex SyncLevel %u, Thread SyncLevel %u, Depth %u TID %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"Acquired: Mutex SyncLevel %u, Thread SyncLevel %u, Depth %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_acquire_mutex(%union.acpi_operand_object* %0, %union.acpi_operand_object* %1, %struct.acpi_walk_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %struct.acpi_walk_state*, align 8
  %8 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %5, align 8
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %6, align 8
  store %struct.acpi_walk_state* %2, %struct.acpi_walk_state** %7, align 8
  %9 = load i32, i32* @ex_acquire_mutex, align 4
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %11 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %9, %union.acpi_operand_object* %10)
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %13 = icmp ne %union.acpi_operand_object* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %16 = call i32 @return_ACPI_STATUS(i32 %15)
  br label %17

17:                                               ; preds = %14, %3
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %19 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @AE_INFO, align 4
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %25 = bitcast %union.acpi_operand_object* %24 to %struct.TYPE_5__*
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @acpi_ut_get_node_name(i32 %27)
  %29 = call i32 @ACPI_ERROR(i32 %28)
  %30 = load i32, i32* @AE_AML_INTERNAL, align 4
  %31 = call i32 @return_ACPI_STATUS(i32 %30)
  br label %32

32:                                               ; preds = %22, %17
  %33 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %34 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %39 = bitcast %union.acpi_operand_object* %38 to %struct.TYPE_5__*
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %37, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %32
  %44 = load i32, i32* @AE_INFO, align 4
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %46 = bitcast %union.acpi_operand_object* %45 to %struct.TYPE_5__*
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @acpi_ut_get_node_name(i32 %48)
  %50 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %51 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @ACPI_ERROR(i32 %55)
  %57 = load i32, i32* @AE_AML_MUTEX_ORDER, align 4
  %58 = call i32 @return_ACPI_STATUS(i32 %57)
  br label %59

59:                                               ; preds = %43, %32
  %60 = load i32, i32* @ACPI_DB_EXEC, align 4
  %61 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %62 = bitcast %union.acpi_operand_object* %61 to %struct.TYPE_5__*
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %66 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %71 = bitcast %union.acpi_operand_object* %70 to %struct.TYPE_5__*
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %75 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = ptrtoint %struct.TYPE_6__* %76 to i32
  %78 = call i32 @ACPI_DEBUG_PRINT(i32 %77)
  %79 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %80 = bitcast %union.acpi_operand_object* %79 to %struct.TYPE_4__*
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %85 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %86 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @acpi_ex_acquire_mutex_object(i32 %83, %union.acpi_operand_object* %84, i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i64 @ACPI_SUCCESS(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %128

94:                                               ; preds = %59
  %95 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %96 = bitcast %union.acpi_operand_object* %95 to %struct.TYPE_5__*
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %128

100:                                              ; preds = %94
  %101 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %102 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %105 = bitcast %union.acpi_operand_object* %104 to %struct.TYPE_5__*
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 3
  store %struct.TYPE_6__* %103, %struct.TYPE_6__** %106, align 8
  %107 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %108 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %113 = bitcast %union.acpi_operand_object* %112 to %struct.TYPE_5__*
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  store i64 %111, i64* %114, align 8
  %115 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %116 = bitcast %union.acpi_operand_object* %115 to %struct.TYPE_5__*
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %120 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store i64 %118, i64* %122, align 8
  %123 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %124 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %125 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %124, i32 0, i32 0
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = call i32 @acpi_ex_link_mutex(%union.acpi_operand_object* %123, %struct.TYPE_6__* %126)
  br label %128

128:                                              ; preds = %100, %94, %59
  %129 = load i32, i32* @ACPI_DB_EXEC, align 4
  %130 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %131 = bitcast %union.acpi_operand_object* %130 to %struct.TYPE_5__*
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %135 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %134, i32 0, i32 0
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %140 = bitcast %union.acpi_operand_object* %139 to %struct.TYPE_5__*
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @ACPI_DEBUG_PRINT(i32 %142)
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @return_ACPI_STATUS(i32 %144)
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ut_get_node_name(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ex_acquire_mutex_object(i32, %union.acpi_operand_object*, i32) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_ex_link_mutex(%union.acpi_operand_object*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
