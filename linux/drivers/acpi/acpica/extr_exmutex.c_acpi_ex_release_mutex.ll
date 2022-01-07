; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exmutex.c_acpi_ex_release_mutex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exmutex.c_acpi_ex_release_mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32, %struct.acpi_thread_state* }
%struct.acpi_thread_state = type { i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.acpi_walk_state = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32 }

@AE_OK = common dso_local global i32 0, align 4
@ex_release_mutex = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Cannot release Mutex [%4.4s], not acquired\00", align 1
@AE_AML_MUTEX_NOT_ACQUIRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Cannot release Mutex [%4.4s], null thread info\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@acpi_gbl_global_lock_mutex = common dso_local global %union.acpi_operand_object* null, align 8
@.str.2 = private unnamed_addr constant [61 x i8] c"Thread %u cannot release Mutex [%4.4s] acquired by thread %u\00", align 1
@AE_AML_NOT_OWNER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [70 x i8] c"Cannot release Mutex [%4.4s], SyncLevel mismatch: mutex %u current %u\00", align 1
@AE_AML_MUTEX_ORDER = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [89 x i8] c"Releasing: Object SyncLevel %u, Thread SyncLevel %u, Prev SyncLevel %u, Depth %u TID %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [82 x i8] c"Released: Object SyncLevel %u, Thread SyncLevel, %u, Prev SyncLevel %u, Depth %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_release_mutex(%union.acpi_operand_object* %0, %struct.acpi_walk_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca %struct.acpi_walk_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.acpi_thread_state*, align 8
  %8 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %4, align 8
  store %struct.acpi_walk_state* %1, %struct.acpi_walk_state** %5, align 8
  %9 = load i32, i32* @AE_OK, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* @ex_release_mutex, align 4
  %11 = call i32 @ACPI_FUNCTION_TRACE(i32 %10)
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %13 = icmp ne %union.acpi_operand_object* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %16 = call i32 @return_ACPI_STATUS(i32 %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %19 = bitcast %union.acpi_operand_object* %18 to %struct.TYPE_8__*
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %20, align 8
  store %struct.acpi_thread_state* %21, %struct.acpi_thread_state** %7, align 8
  %22 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %7, align 8
  %23 = icmp ne %struct.acpi_thread_state* %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @AE_INFO, align 4
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %27 = bitcast %union.acpi_operand_object* %26 to %struct.TYPE_8__*
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @acpi_ut_get_node_name(i32 %29)
  %31 = call i32 @ACPI_ERROR(i32 %30)
  %32 = load i32, i32* @AE_AML_MUTEX_NOT_ACQUIRED, align 4
  %33 = call i32 @return_ACPI_STATUS(i32 %32)
  br label %34

34:                                               ; preds = %24, %17
  %35 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %36 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = icmp ne %struct.TYPE_7__* %37, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @AE_INFO, align 4
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %42 = bitcast %union.acpi_operand_object* %41 to %struct.TYPE_8__*
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @acpi_ut_get_node_name(i32 %44)
  %46 = call i32 @ACPI_ERROR(i32 %45)
  %47 = load i32, i32* @AE_AML_INTERNAL, align 4
  %48 = call i32 @return_ACPI_STATUS(i32 %47)
  br label %49

49:                                               ; preds = %39, %34
  %50 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %7, align 8
  %51 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %54 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %52, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %49
  %60 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %61 = load %union.acpi_operand_object*, %union.acpi_operand_object** @acpi_gbl_global_lock_mutex, align 8
  %62 = icmp ne %union.acpi_operand_object* %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %59
  %64 = load i32, i32* @AE_INFO, align 4
  %65 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %66 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %72 = bitcast %union.acpi_operand_object* %71 to %struct.TYPE_8__*
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @acpi_ut_get_node_name(i32 %74)
  %76 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %7, align 8
  %77 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @ACPI_ERROR(i32 %79)
  %81 = load i32, i32* @AE_AML_NOT_OWNER, align 4
  %82 = call i32 @return_ACPI_STATUS(i32 %81)
  br label %83

83:                                               ; preds = %63, %59, %49
  %84 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %85 = bitcast %union.acpi_operand_object* %84 to %struct.TYPE_8__*
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %7, align 8
  %89 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %83
  %93 = load i32, i32* @AE_INFO, align 4
  %94 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %95 = bitcast %union.acpi_operand_object* %94 to %struct.TYPE_8__*
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @acpi_ut_get_node_name(i32 %97)
  %99 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %100 = bitcast %union.acpi_operand_object* %99 to %struct.TYPE_8__*
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %104 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %103, i32 0, i32 0
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @ACPI_ERROR(i32 %107)
  %109 = load i32, i32* @AE_AML_MUTEX_ORDER, align 4
  %110 = call i32 @return_ACPI_STATUS(i32 %109)
  br label %111

111:                                              ; preds = %92, %83
  %112 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %7, align 8
  %113 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %112, i32 0, i32 2
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %6, align 8
  %118 = load i32, i32* @ACPI_DB_EXEC, align 4
  %119 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %120 = bitcast %union.acpi_operand_object* %119 to %struct.TYPE_8__*
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %124 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %123, i32 0, i32 0
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i64, i64* %6, align 8
  %129 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %130 = bitcast %union.acpi_operand_object* %129 to %struct.TYPE_8__*
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %134 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %133, i32 0, i32 0
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = ptrtoint %struct.TYPE_7__* %135 to i32
  %137 = call i32 @ACPI_DEBUG_PRINT(i32 %136)
  %138 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %139 = call i32 @acpi_ex_release_mutex_object(%union.acpi_operand_object* %138)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = call i64 @ACPI_FAILURE(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %111
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @return_ACPI_STATUS(i32 %144)
  br label %146

146:                                              ; preds = %143, %111
  %147 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %148 = bitcast %union.acpi_operand_object* %147 to %struct.TYPE_8__*
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = load i64, i64* %6, align 8
  %154 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %7, align 8
  %155 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %154, i32 0, i32 1
  store i64 %153, i64* %155, align 8
  br label %156

156:                                              ; preds = %152, %146
  %157 = load i32, i32* @ACPI_DB_EXEC, align 4
  %158 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %159 = bitcast %union.acpi_operand_object* %158 to %struct.TYPE_8__*
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %163 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %162, i32 0, i32 0
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load i64, i64* %6, align 8
  %168 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %169 = bitcast %union.acpi_operand_object* %168 to %struct.TYPE_8__*
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @ACPI_DEBUG_PRINT(i32 %171)
  %173 = load i32, i32* %8, align 4
  %174 = call i32 @return_ACPI_STATUS(i32 %173)
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ut_get_node_name(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ex_release_mutex_object(%union.acpi_operand_object*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
