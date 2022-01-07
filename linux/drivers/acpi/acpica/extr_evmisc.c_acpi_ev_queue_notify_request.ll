; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evmisc.c_acpi_ev_queue_notify_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evmisc.c_acpi_ev_queue_notify_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.acpi_namespace_node = type { i32 }
%union.acpi_operand_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %union.acpi_operand_object** }
%union.acpi_generic_state = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_8__*, %union.acpi_operand_object*, i64, %struct.acpi_namespace_node* }
%struct.TYPE_6__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ev_queue_notify_request = common dso_local global i32 0, align 4
@AE_TYPE = common dso_local global i32 0, align 4
@ACPI_MAX_SYS_NOTIFY = common dso_local global i64 0, align 8
@ACPI_SYSTEM_HANDLER_LIST = common dso_local global i64 0, align 8
@ACPI_DEVICE_HANDLER_LIST = common dso_local global i64 0, align 8
@acpi_gbl_global_notify = common dso_local global %struct.TYPE_8__* null, align 8
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"No notify handler for Notify, ignoring (%4.4s, %X) node %p\0A\00", align 1
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_DESC_TYPE_STATE_NOTIFY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Dispatching Notify on [%4.4s] (%s) Value 0x%2.2X (%s) Node %p\0A\00", align 1
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@OSL_NOTIFY_HANDLER = common dso_local global i32 0, align 4
@acpi_ev_notify_dispatch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ev_queue_notify_request(%struct.acpi_namespace_node* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_namespace_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca %union.acpi_generic_state*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %4, align 8
  store i64 %1, i64* %5, align 8
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %7, align 8
  store i64 0, i64* %9, align 8
  %11 = load i32, i32* @AE_OK, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* @ev_queue_notify_request, align 4
  %13 = call i32 @ACPI_FUNCTION_NAME(i32 %12)
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %15 = call i32 @acpi_ev_is_notify_object(%struct.acpi_namespace_node* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @AE_TYPE, align 4
  store i32 %18, i32* %3, align 4
  br label %118

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @ACPI_MAX_SYS_NOTIFY, align 8
  %22 = icmp sle i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i64, i64* @ACPI_SYSTEM_HANDLER_LIST, align 8
  store i64 %24, i64* %9, align 8
  br label %27

25:                                               ; preds = %19
  %26 = load i64, i64* @ACPI_DEVICE_HANDLER_LIST, align 8
  store i64 %26, i64* %9, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %29 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %28)
  store %union.acpi_operand_object* %29, %union.acpi_operand_object** %6, align 8
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %31 = icmp ne %union.acpi_operand_object* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %34 = bitcast %union.acpi_operand_object* %33 to %struct.TYPE_5__*
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %36, i64 %37
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %38, align 8
  store %union.acpi_operand_object* %39, %union.acpi_operand_object** %7, align 8
  br label %40

40:                                               ; preds = %32, %27
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @acpi_gbl_global_notify, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %40
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %49 = icmp ne %union.acpi_operand_object* %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @ACPI_DB_INFO, align 4
  %52 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %53 = call i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %52)
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %56 = ptrtoint %struct.acpi_namespace_node* %55 to i32
  %57 = call i32 @ACPI_DEBUG_PRINT(i32 %56)
  %58 = load i32, i32* @AE_OK, align 4
  store i32 %58, i32* %3, align 4
  br label %118

59:                                               ; preds = %47, %40
  %60 = call %union.acpi_generic_state* (...) @acpi_ut_create_generic_state()
  store %union.acpi_generic_state* %60, %union.acpi_generic_state** %8, align 8
  %61 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %62 = icmp ne %union.acpi_generic_state* %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %64, i32* %3, align 4
  br label %118

65:                                               ; preds = %59
  %66 = load i32, i32* @ACPI_DESC_TYPE_STATE_NOTIFY, align 4
  %67 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %68 = bitcast %union.acpi_generic_state* %67 to %struct.TYPE_6__*
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %71 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %72 = bitcast %union.acpi_generic_state* %71 to %struct.TYPE_7__*
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 4
  store %struct.acpi_namespace_node* %70, %struct.acpi_namespace_node** %73, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %76 = bitcast %union.acpi_generic_state* %75 to %struct.TYPE_7__*
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  store i64 %74, i64* %77, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %80 = bitcast %union.acpi_generic_state* %79 to %struct.TYPE_7__*
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  %82 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %83 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %84 = bitcast %union.acpi_generic_state* %83 to %struct.TYPE_7__*
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  store %union.acpi_operand_object* %82, %union.acpi_operand_object** %85, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @acpi_gbl_global_notify, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i64 %87
  %89 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %90 = bitcast %union.acpi_generic_state* %89 to %struct.TYPE_7__*
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store %struct.TYPE_8__* %88, %struct.TYPE_8__** %91, align 8
  %92 = load i32, i32* @ACPI_DB_INFO, align 4
  %93 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %94 = call i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %93)
  %95 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %96 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @acpi_ut_get_type_name(i32 %97)
  %99 = load i64, i64* %5, align 8
  %100 = load i64, i64* %5, align 8
  %101 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %102 = call i32 @acpi_ut_get_notify_name(i64 %100, i32 %101)
  %103 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %104 = ptrtoint %struct.acpi_namespace_node* %103 to i32
  %105 = call i32 @ACPI_DEBUG_PRINT(i32 %104)
  %106 = load i32, i32* @OSL_NOTIFY_HANDLER, align 4
  %107 = load i32, i32* @acpi_ev_notify_dispatch, align 4
  %108 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %109 = call i32 @acpi_os_execute(i32 %106, i32 %107, %union.acpi_generic_state* %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i64 @ACPI_FAILURE(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %65
  %114 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %115 = call i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state* %114)
  br label %116

116:                                              ; preds = %113, %65
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %63, %50, %17
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @acpi_ev_is_notify_object(%struct.acpi_namespace_node*) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node*) #1

declare dso_local %union.acpi_generic_state* @acpi_ut_create_generic_state(...) #1

declare dso_local i32 @acpi_ut_get_type_name(i32) #1

declare dso_local i32 @acpi_ut_get_notify_name(i64, i32) #1

declare dso_local i32 @acpi_os_execute(i32, i32, %union.acpi_generic_state*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
