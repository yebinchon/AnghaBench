; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsinit.c_acpi_ns_initialize_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsinit.c_acpi_ns_initialize_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device_walk_info = type { i64, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32*, i8*, i32 }

@AE_OK = common dso_local global i32 0, align 4
@ns_initialize_devices = common dso_local global i32 0, align 4
@ACPI_NO_DEVICE_INIT = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"[Init] Initializing ACPI Devices\0A\00", align 1
@ACPI_DB_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [80 x i8] c"Initializing Device/Processor/Thermal objects and executing _INI/_STA methods:\0A\00", align 1
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_ROOT_OBJECT = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@acpi_ns_find_ini_methods = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@acpi_gbl_root_node = common dso_local global i32 0, align 4
@METHOD_NAME__INI = common dso_local global i8* null, align 8
@ACPI_IGNORE_RETURN_VALUE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"\\_SB\00", align 1
@ACPI_NO_ADDRESS_SPACE_INIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"[Init] Executing _REG OpRegion methods\0A\00", align 1
@acpi_ns_init_one_device = common dso_local global i32 0, align 4
@acpi_gbl_osi_data = common dso_local global i64 0, align 8
@ACPI_OSI_WIN_2000 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@acpi_gbl_truncate_io_addresses = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [81 x i8] c"    Executed %u _INI methods requiring %u _STA executions (examined %u objects)\0A\00", align 1
@AE_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"During device initialization\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_initialize_devices(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_device_walk_info, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @AE_OK, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @ns_initialize_devices, align 4
  %9 = call i32 @ACPI_FUNCTION_TRACE(i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @ACPI_NO_DEVICE_INIT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %102, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ACPI_DB_EXEC, align 4
  %16 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([34 x i8]* @.str to i32))
  %17 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %5, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %5, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %5, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @ACPI_DB_INIT, align 4
  %21 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 ptrtoint ([80 x i8]* @.str.1 to i32))
  %22 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %23 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %24 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %25 = load i32, i32* @FALSE, align 4
  %26 = load i32, i32* @acpi_ns_find_ini_methods, align 4
  %27 = call i32 @acpi_ns_walk_namespace(i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32* null, %struct.acpi_device_walk_info* %5, i32* null)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @ACPI_FAILURE(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %14
  br label %154

32:                                               ; preds = %14
  %33 = call %struct.TYPE_5__* @ACPI_ALLOCATE_ZEROED(i32 4)
  %34 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %5, i32 0, i32 3
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %34, align 8
  %35 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %5, i32 0, i32 3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = icmp ne %struct.TYPE_5__* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %39, i32* %4, align 4
  br label %154

40:                                               ; preds = %32
  %41 = load i32, i32* @acpi_gbl_root_node, align 4
  %42 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %5, i32 0, i32 3
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 8
  %45 = load i8*, i8** @METHOD_NAME__INI, align 8
  %46 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %5, i32 0, i32 3
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  store i8* %45, i8** %48, align 8
  %49 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %5, i32 0, i32 3
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  %52 = load i8*, i8** @ACPI_IGNORE_RETURN_VALUE, align 8
  %53 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %5, i32 0, i32 3
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  %56 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %5, i32 0, i32 3
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = call i32 @acpi_ns_evaluate(%struct.TYPE_5__* %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i64 @ACPI_SUCCESS(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %40
  %63 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %5, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %63, align 8
  br label %66

66:                                               ; preds = %62, %40
  %67 = call i32 @acpi_get_handle(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i64 @ACPI_SUCCESS(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %101

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %5, i32 0, i32 3
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = call i32 @memset(%struct.TYPE_5__* %73, i32 0, i32 4)
  %75 = load i32, i32* %6, align 4
  %76 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %5, i32 0, i32 3
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  store i32 %75, i32* %78, align 8
  %79 = load i8*, i8** @METHOD_NAME__INI, align 8
  %80 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %5, i32 0, i32 3
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  store i8* %79, i8** %82, align 8
  %83 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %5, i32 0, i32 3
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i32* null, i32** %85, align 8
  %86 = load i8*, i8** @ACPI_IGNORE_RETURN_VALUE, align 8
  %87 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %5, i32 0, i32 3
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i8* %86, i8** %89, align 8
  %90 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %5, i32 0, i32 3
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = call i32 @acpi_ns_evaluate(%struct.TYPE_5__* %91)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i64 @ACPI_SUCCESS(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %71
  %97 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %5, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %97, align 8
  br label %100

100:                                              ; preds = %96, %71
  br label %101

101:                                              ; preds = %100, %66
  br label %102

102:                                              ; preds = %101, %1
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @ACPI_NO_ADDRESS_SPACE_INIT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* @ACPI_DB_EXEC, align 4
  %109 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([40 x i8]* @.str.3 to i32))
  %110 = call i32 (...) @acpi_ev_initialize_op_regions()
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = call i64 @ACPI_FAILURE(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %154

115:                                              ; preds = %107
  br label %116

116:                                              ; preds = %115, %102
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* @ACPI_NO_DEVICE_INIT, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %151, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %123 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %124 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %125 = load i32, i32* @FALSE, align 4
  %126 = load i32, i32* @acpi_ns_init_one_device, align 4
  %127 = call i32 @acpi_ns_walk_namespace(i32 %122, i32 %123, i32 %124, i32 %125, i32 %126, i32* null, %struct.acpi_device_walk_info* %5, i32* null)
  store i32 %127, i32* %4, align 4
  %128 = load i64, i64* @acpi_gbl_osi_data, align 8
  %129 = load i64, i64* @ACPI_OSI_WIN_2000, align 8
  %130 = icmp sge i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %121
  %132 = load i32, i32* @TRUE, align 4
  store i32 %132, i32* @acpi_gbl_truncate_io_addresses, align 4
  br label %133

133:                                              ; preds = %131, %121
  %134 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %5, i32 0, i32 3
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = call i32 @ACPI_FREE(%struct.TYPE_5__* %135)
  %137 = load i32, i32* %4, align 4
  %138 = call i64 @ACPI_FAILURE(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  br label %154

141:                                              ; preds = %133
  %142 = load i32, i32* @ACPI_DB_INIT, align 4
  %143 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %5, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %5, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %5, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  %150 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %149)
  br label %151

151:                                              ; preds = %141, %116
  %152 = load i32, i32* %4, align 4
  %153 = call i32 @return_ACPI_STATUS(i32 %152)
  br label %154

154:                                              ; preds = %151, %140, %114, %38, %31
  %155 = load i32, i32* @AE_INFO, align 4
  %156 = load i32, i32* %4, align 4
  %157 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([29 x i8]* @.str.5 to i32))
  %158 = load i32, i32* %4, align 4
  %159 = call i32 @return_ACPI_STATUS(i32 %158)
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT_RAW(i32) #1

declare dso_local i32 @acpi_ns_walk_namespace(i32, i32, i32, i32, i32, i32*, %struct.acpi_device_walk_info*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local %struct.TYPE_5__* @ACPI_ALLOCATE_ZEROED(i32) #1

declare dso_local i32 @acpi_ns_evaluate(%struct.TYPE_5__*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_get_handle(i32*, i8*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @acpi_ev_initialize_op_regions(...) #1

declare dso_local i32 @ACPI_FREE(%struct.TYPE_5__*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
