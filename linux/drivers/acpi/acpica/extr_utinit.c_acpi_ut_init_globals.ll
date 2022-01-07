; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utinit.c_acpi_ut_init_globals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utinit.c_acpi_ut_init_globals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { i32*, i32*, i32*, i32*, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ut_init_globals = common dso_local global i32 0, align 4
@ACPI_ADDRESS_RANGE_MAX = common dso_local global i64 0, align 8
@acpi_gbl_address_range_list = common dso_local global i32** null, align 8
@ACPI_NUM_MUTEX = common dso_local global i64 0, align 8
@acpi_gbl_mutex_info = common dso_local global %struct.TYPE_7__* null, align 8
@ACPI_MUTEX_NOT_ACQUIRED = common dso_local global i32 0, align 4
@ACPI_NUM_OWNERID_MASKS = common dso_local global i64 0, align 8
@acpi_gbl_owner_id_mask = common dso_local global i32* null, align 8
@acpi_method_count = common dso_local global i64 0, align 8
@acpi_sci_count = common dso_local global i64 0, align 8
@acpi_gpe_count = common dso_local global i64 0, align 8
@ACPI_NUM_FIXED_EVENTS = common dso_local global i64 0, align 8
@acpi_fixed_event_count = common dso_local global i64* null, align 8
@FALSE = common dso_local global i8* null, align 8
@acpi_gbl_all_gpes_initialized = common dso_local global i8* null, align 8
@acpi_gbl_gpe_xrupt_list_head = common dso_local global i32* null, align 8
@acpi_gbl_gpe_fadt_blocks = common dso_local global i32** null, align 8
@acpi_current_gpe_count = common dso_local global i64 0, align 8
@acpi_gbl_global_event_handler = common dso_local global i32* null, align 8
@acpi_gbl_sci_handler_list = common dso_local global i32* null, align 8
@acpi_gbl_global_notify = common dso_local global %struct.TYPE_8__* null, align 8
@acpi_gbl_exception_handler = common dso_local global i32* null, align 8
@acpi_gbl_init_handler = common dso_local global i32* null, align 8
@acpi_gbl_table_handler = common dso_local global i32* null, align 8
@acpi_gbl_interface_handler = common dso_local global i32* null, align 8
@acpi_gbl_global_lock_semaphore = common dso_local global i32* null, align 8
@acpi_gbl_global_lock_mutex = common dso_local global i32* null, align 8
@acpi_gbl_global_lock_acquired = common dso_local global i8* null, align 8
@acpi_gbl_global_lock_handle = common dso_local global i64 0, align 8
@acpi_gbl_global_lock_present = common dso_local global i8* null, align 8
@acpi_gbl_DSDT = common dso_local global i32* null, align 8
@acpi_gbl_cm_single_step = common dso_local global i8* null, align 8
@acpi_gbl_shutdown = common dso_local global i8* null, align 8
@acpi_gbl_ns_lookup_count = common dso_local global i64 0, align 8
@acpi_gbl_ps_find_count = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@acpi_gbl_acpi_hardware_present = common dso_local global i8* null, align 8
@acpi_gbl_last_owner_id_index = common dso_local global i64 0, align 8
@acpi_gbl_next_owner_id_offset = common dso_local global i64 0, align 8
@DEBUGGER_THREADING = common dso_local global i32 0, align 4
@acpi_gbl_debugger_configuration = common dso_local global i32 0, align 4
@acpi_gbl_osi_mutex = common dso_local global i32* null, align 8
@acpi_gbl_events_initialized = common dso_local global i8* null, align 8
@acpi_gbl_system_awake_and_running = common dso_local global i8* null, align 8
@acpi_gbl_root_node = common dso_local global i32* null, align 8
@ACPI_ROOT_NAME = common dso_local global i32 0, align 4
@acpi_gbl_root_node_struct = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ACPI_DESC_TYPE_NAMED = common dso_local global i32 0, align 4
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@ACPI_SIZE_MAX = common dso_local global i32 0, align 4
@acpi_gbl_disable_mem_tracking = common dso_local global i8* null, align 8
@acpi_gbl_display_final_mem_stats = common dso_local global i8* null, align 8
@acpi_gbl_external_list = common dso_local global i32* null, align 8
@acpi_gbl_lowest_stack_pointer = common dso_local global i32 0, align 4
@acpi_gbl_num_external_methods = common dso_local global i64 0, align 8
@acpi_gbl_resolved_external_methods = common dso_local global i64 0, align 8
@acpi_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ut_init_globals() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i32, i32* @ut_init_globals, align 4
  %5 = call i32 @ACPI_FUNCTION_TRACE(i32 %4)
  %6 = call i32 (...) @acpi_ut_create_caches()
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @ACPI_FAILURE(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @return_ACPI_STATUS(i32 %11)
  br label %13

13:                                               ; preds = %10, %0
  store i64 0, i64* %3, align 8
  br label %14

14:                                               ; preds = %22, %13
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @ACPI_ADDRESS_RANGE_MAX, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i32**, i32*** @acpi_gbl_address_range_list, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds i32*, i32** %19, i64 %20
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %3, align 8
  br label %14

25:                                               ; preds = %14
  store i64 0, i64* %3, align 8
  br label %26

26:                                               ; preds = %44, %25
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @ACPI_NUM_MUTEX, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @acpi_gbl_mutex_info, align 8
  %32 = load i64, i64* %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load i32, i32* @ACPI_MUTEX_NOT_ACQUIRED, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** @acpi_gbl_mutex_info, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @acpi_gbl_mutex_info, align 8
  %41 = load i64, i64* %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %30
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %3, align 8
  br label %26

47:                                               ; preds = %26
  store i64 0, i64* %3, align 8
  br label %48

48:                                               ; preds = %56, %47
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* @ACPI_NUM_OWNERID_MASKS, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32*, i32** @acpi_gbl_owner_id_mask, align 8
  %54 = load i64, i64* %3, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %3, align 8
  br label %48

59:                                               ; preds = %48
  %60 = load i32*, i32** @acpi_gbl_owner_id_mask, align 8
  %61 = load i64, i64* @ACPI_NUM_OWNERID_MASKS, align 8
  %62 = sub i64 %61, 1
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 -2147483648, i32* %63, align 4
  store i64 0, i64* @acpi_method_count, align 8
  store i64 0, i64* @acpi_sci_count, align 8
  store i64 0, i64* @acpi_gpe_count, align 8
  store i64 0, i64* %3, align 8
  br label %64

64:                                               ; preds = %72, %59
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* @ACPI_NUM_FIXED_EVENTS, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i64*, i64** @acpi_fixed_event_count, align 8
  %70 = load i64, i64* %3, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %3, align 8
  br label %64

75:                                               ; preds = %64
  %76 = load i8*, i8** @FALSE, align 8
  store i8* %76, i8** @acpi_gbl_all_gpes_initialized, align 8
  store i32* null, i32** @acpi_gbl_gpe_xrupt_list_head, align 8
  %77 = load i32**, i32*** @acpi_gbl_gpe_fadt_blocks, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 0
  store i32* null, i32** %78, align 8
  %79 = load i32**, i32*** @acpi_gbl_gpe_fadt_blocks, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 1
  store i32* null, i32** %80, align 8
  store i64 0, i64* @acpi_current_gpe_count, align 8
  store i32* null, i32** @acpi_gbl_global_event_handler, align 8
  store i32* null, i32** @acpi_gbl_sci_handler_list, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** @acpi_gbl_global_notify, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32* null, i32** %83, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** @acpi_gbl_global_notify, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i32* null, i32** %86, align 8
  store i32* null, i32** @acpi_gbl_exception_handler, align 8
  store i32* null, i32** @acpi_gbl_init_handler, align 8
  store i32* null, i32** @acpi_gbl_table_handler, align 8
  store i32* null, i32** @acpi_gbl_interface_handler, align 8
  store i32* null, i32** @acpi_gbl_global_lock_semaphore, align 8
  store i32* null, i32** @acpi_gbl_global_lock_mutex, align 8
  %87 = load i8*, i8** @FALSE, align 8
  store i8* %87, i8** @acpi_gbl_global_lock_acquired, align 8
  store i64 0, i64* @acpi_gbl_global_lock_handle, align 8
  %88 = load i8*, i8** @FALSE, align 8
  store i8* %88, i8** @acpi_gbl_global_lock_present, align 8
  store i32* null, i32** @acpi_gbl_DSDT, align 8
  %89 = load i8*, i8** @FALSE, align 8
  store i8* %89, i8** @acpi_gbl_cm_single_step, align 8
  %90 = load i8*, i8** @FALSE, align 8
  store i8* %90, i8** @acpi_gbl_shutdown, align 8
  store i64 0, i64* @acpi_gbl_ns_lookup_count, align 8
  store i64 0, i64* @acpi_gbl_ps_find_count, align 8
  %91 = load i8*, i8** @TRUE, align 8
  store i8* %91, i8** @acpi_gbl_acpi_hardware_present, align 8
  store i64 0, i64* @acpi_gbl_last_owner_id_index, align 8
  store i64 0, i64* @acpi_gbl_next_owner_id_offset, align 8
  %92 = load i32, i32* @DEBUGGER_THREADING, align 4
  store i32 %92, i32* @acpi_gbl_debugger_configuration, align 4
  store i32* null, i32** @acpi_gbl_osi_mutex, align 8
  %93 = load i8*, i8** @FALSE, align 8
  store i8* %93, i8** @acpi_gbl_events_initialized, align 8
  %94 = load i8*, i8** @TRUE, align 8
  store i8* %94, i8** @acpi_gbl_system_awake_and_running, align 8
  store i32* null, i32** @acpi_gbl_root_node, align 8
  %95 = load i32, i32* @ACPI_ROOT_NAME, align 4
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_root_node_struct, i32 0, i32 6, i32 0), align 8
  %96 = load i32, i32* @ACPI_DESC_TYPE_NAMED, align 4
  store i32 %96, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_root_node_struct, i32 0, i32 5), align 4
  %97 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  store i32 %97, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_root_node_struct, i32 0, i32 4), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_root_node_struct, i32 0, i32 3), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_root_node_struct, i32 0, i32 2), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_root_node_struct, i32 0, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_root_node_struct, i32 0, i32 0), align 8
  %98 = load i32, i32* @AE_OK, align 4
  %99 = call i32 @return_ACPI_STATUS(i32 %98)
  %100 = load i32, i32* %1, align 4
  ret i32 %100
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ut_create_caches(...) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
