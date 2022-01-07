; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbstats.c_acpi_db_display_statistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbstats.c_acpi_db_display_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@acpi_db_stat_types = common dso_local global i32 0, align 4
@ACPI_TYPE_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Invalid or unsupported argument\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"ACPI Table Information (not implemented):\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"\0AObjects defined in the current namespace:\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%16.16s %10.10s %10.10s\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ACPI_TYPE\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"NODES\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"OBJECTS\00", align 1
@ACPI_TYPE_NS_NODE_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"%16.16s %10u %10u\0A\00", align 1
@acpi_gbl_node_type_count = common dso_local global i32* null, align 8
@acpi_gbl_obj_type_count = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"Misc/Unknown\00", align 1
@acpi_gbl_node_type_count_misc = common dso_local global i32 0, align 4
@acpi_gbl_obj_type_count_misc = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"TOTALS:\00", align 1
@acpi_gbl_num_nodes = common dso_local global i32 0, align 4
@acpi_gbl_num_objects = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"\0AMiscellaneous Statistics:\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"%-28s:     %7u\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Calls to AcpiPsFind\00", align 1
@acpi_gbl_ps_find_count = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"Calls to AcpiNsLookup\00", align 1
@acpi_gbl_ns_lookup_count = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"\0AMutex usage:\0A\0A\00", align 1
@ACPI_NUM_MUTEX = common dso_local global i32 0, align 4
@acpi_gbl_mutex_info = common dso_local global %struct.TYPE_2__* null, align 8
@.str.15 = private unnamed_addr constant [26 x i8] c"\0AInternal object sizes:\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"Common         %3d\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Number         %3d\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"String         %3d\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"Buffer         %3d\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"Package        %3d\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"BufferField    %3d\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"Device         %3d\0A\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"Event          %3d\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"Method         %3d\0A\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"Mutex          %3d\0A\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"Region         %3d\0A\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"PowerResource  %3d\0A\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"Processor      %3d\0A\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"ThermalZone    %3d\0A\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"RegionField    %3d\0A\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"BankField      %3d\0A\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"IndexField     %3d\0A\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"Reference      %3d\0A\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"Notify         %3d\0A\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"AddressSpace   %3d\0A\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"Extra          %3d\0A\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"Data           %3d\0A\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"ParseObject    %3d\0A\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"ParseObjectNamed %3d\0A\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"ParseObjectAsl %3d\0A\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"OperandObject  %3d\0A\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"NamespaceNode  %3d\0A\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"AcpiObject     %3d\0A\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"Generic State  %3d\0A\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"Common State   %3d\0A\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"Control State  %3d\0A\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"Update State   %3d\0A\00", align 1
@.str.49 = private unnamed_addr constant [20 x i8] c"Scope State    %3d\0A\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"Parse Scope    %3d\0A\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"Package State  %3d\0A\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"Thread State   %3d\0A\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"Result Values  %3d\0A\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"Notify Info    %3d\0A\00", align 1
@acpi_gbl_deepest_nesting = common dso_local global i32 0, align 4
@acpi_gbl_entry_stack_pointer = common dso_local global i32 0, align 4
@acpi_gbl_global_list = common dso_local global i32 0, align 4
@acpi_gbl_lowest_stack_pointer = common dso_local global i32 0, align 4
@acpi_gbl_ns_node_list = common dso_local global i32 0, align 4
@acpi_gbl_operand_cache = common dso_local global i32 0, align 4
@acpi_gbl_ps_node_cache = common dso_local global i32 0, align 4
@acpi_gbl_ps_node_ext_cache = common dso_local global i32 0, align 4
@acpi_gbl_state_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_db_display_statistics(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @acpi_ut_strupr(i8* %6)
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* @acpi_db_stat_types, align 4
  %10 = call i32 @acpi_db_match_argument(i8* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @ACPI_TYPE_NOT_FOUND, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @AE_OK, align 4
  store i32 %16, i32* %2, align 4
  br label %127

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %123 [
    i32 134, label %19
    i32 128, label %20
    i32 131, label %22
    i32 133, label %54
    i32 132, label %55
    i32 130, label %80
    i32 129, label %122
  ]

19:                                               ; preds = %17
  br label %124

20:                                               ; preds = %17
  %21 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %124

22:                                               ; preds = %17
  %23 = call i32 (...) @acpi_db_count_namespace_objects()
  %24 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %44, %22
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @ACPI_TYPE_NS_NODE_MAX, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @acpi_ut_get_type_name(i32 %31)
  %33 = load i32*, i32** @acpi_gbl_node_type_count, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** @acpi_gbl_obj_type_count, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %32, i32 %37, i32 %42)
  br label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %26

47:                                               ; preds = %26
  %48 = load i32, i32* @acpi_gbl_node_type_count_misc, align 4
  %49 = load i32, i32* @acpi_gbl_obj_type_count_misc, align 4
  %50 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32, i32* @acpi_gbl_num_nodes, align 4
  %52 = load i32, i32* @acpi_gbl_num_objects, align 4
  %53 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %51, i32 %52)
  br label %124

54:                                               ; preds = %17
  br label %124

55:                                               ; preds = %17
  %56 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %57 = load i32, i32* @acpi_gbl_ps_find_count, align 4
  %58 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @acpi_gbl_ns_lookup_count, align 4
  %60 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %59)
  %61 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %76, %55
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @ACPI_NUM_MUTEX, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @acpi_ut_get_mutex_name(i32 %67)
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_gbl_mutex_info, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %68, i32 %74)
  br label %76

76:                                               ; preds = %66
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %62

79:                                               ; preds = %62
  br label %124

80:                                               ; preds = %17
  %81 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  %82 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 4)
  %83 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 4)
  %84 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32 4)
  %85 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 4)
  %86 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i32 4)
  %87 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i32 4)
  %88 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i32 4)
  %89 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 4)
  %90 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i32 4)
  %91 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i32 4)
  %92 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0), i32 4)
  %93 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0), i32 4)
  %94 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0), i32 4)
  %95 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0), i32 4)
  %96 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0), i32 4)
  %97 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i64 0, i64 0), i32 4)
  %98 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i64 0, i64 0), i32 4)
  %99 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i64 0, i64 0), i32 4)
  %100 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i64 0, i64 0), i32 4)
  %101 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i64 0, i64 0), i32 4)
  %102 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i64 0, i64 0), i32 4)
  %103 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i64 0, i64 0), i32 4)
  %104 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0))
  %105 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i64 0, i64 0), i32 4)
  %106 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i64 0, i64 0), i32 4)
  %107 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0), i32 4)
  %108 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i64 0, i64 0), i32 4)
  %109 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i64 0, i64 0), i32 4)
  %110 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i64 0, i64 0), i32 4)
  %111 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0))
  %112 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i64 0, i64 0), i32 4)
  %113 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i64 0, i64 0), i32 4)
  %114 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i32 4)
  %115 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i64 0, i64 0), i32 4)
  %116 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.49, i64 0, i64 0), i32 4)
  %117 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.50, i64 0, i64 0), i32 4)
  %118 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i64 0, i64 0), i32 4)
  %119 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.52, i64 0, i64 0), i32 4)
  %120 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.53, i64 0, i64 0), i32 4)
  %121 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i64 0, i64 0), i32 4)
  br label %124

122:                                              ; preds = %17
  br label %124

123:                                              ; preds = %17
  br label %124

124:                                              ; preds = %123, %122, %80, %79, %54, %47, %20, %19
  %125 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0))
  %126 = load i32, i32* @AE_OK, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %124, %14
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @acpi_ut_strupr(i8*) #1

declare dso_local i32 @acpi_db_match_argument(i8*, i32) #1

declare dso_local i32 @acpi_os_printf(i8*, ...) #1

declare dso_local i32 @acpi_db_count_namespace_objects(...) #1

declare dso_local i32 @acpi_ut_get_type_name(i32) #1

declare dso_local i32 @acpi_ut_get_mutex_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
