; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utosi.c_acpi_ut_osi_implementation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utosi.c_acpi_ut_osi_implementation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { %union.acpi_operand_object*, %struct.TYPE_5__* }
%union.acpi_operand_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { %union.acpi_operand_object* }
%struct.acpi_interface_info = type { i32, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@ut_osi_implementation = common dso_local global i32 0, align 4
@ACPI_TYPE_STRING = common dso_local global i64 0, align 8
@AE_TYPE = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@acpi_gbl_osi_mutex = common dso_local global i32 0, align 4
@ACPI_WAIT_FOREVER = common dso_local global i32 0, align 4
@ACPI_OSI_INVALID = common dso_local global i32 0, align 4
@acpi_gbl_osi_data = common dso_local global i64 0, align 8
@ACPI_UINT64_MAX = common dso_local global i64 0, align 8
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ACPI: BIOS _OSI(\22%s\22) is %ssupported\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ut_osi_implementation(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_walk_state*, align 8
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca %struct.acpi_interface_info*, align 8
  %7 = alloca i64 (i32, i32)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %3, align 8
  %10 = load i32, i32* @ut_osi_implementation, align 4
  %11 = call i32 @ACPI_FUNCTION_TRACE(i32 %10)
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %16, align 8
  store %union.acpi_operand_object* %17, %union.acpi_operand_object** %4, align 8
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %19 = icmp ne %union.acpi_operand_object* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %22 = bitcast %union.acpi_operand_object* %21 to %struct.TYPE_6__*
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ACPI_TYPE_STRING, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20, %1
  %28 = load i32, i32* @AE_TYPE, align 4
  %29 = call i32 @return_ACPI_STATUS(i32 %28)
  br label %30

30:                                               ; preds = %27, %20
  %31 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %32 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %31)
  store %union.acpi_operand_object* %32, %union.acpi_operand_object** %5, align 8
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %34 = icmp ne %union.acpi_operand_object* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @AE_NO_MEMORY, align 4
  %37 = call i32 @return_ACPI_STATUS(i32 %36)
  br label %38

38:                                               ; preds = %35, %30
  store i64 0, i64* %9, align 8
  %39 = load i32, i32* @acpi_gbl_osi_mutex, align 4
  %40 = load i32, i32* @ACPI_WAIT_FOREVER, align 4
  %41 = call i32 @acpi_os_acquire_mutex(i32 %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @ACPI_FAILURE(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %47 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %46)
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @return_ACPI_STATUS(i32 %48)
  br label %50

50:                                               ; preds = %45, %38
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %52 = bitcast %union.acpi_operand_object* %51 to %struct.TYPE_7__*
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.acpi_interface_info* @acpi_ut_get_interface(i32 %54)
  store %struct.acpi_interface_info* %55, %struct.acpi_interface_info** %6, align 8
  %56 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %6, align 8
  %57 = icmp ne %struct.acpi_interface_info* %56, null
  br i1 %57, label %58, label %77

58:                                               ; preds = %50
  %59 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %6, align 8
  %60 = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ACPI_OSI_INVALID, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %58
  %66 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %6, align 8
  %67 = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @acpi_gbl_osi_data, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load %struct.acpi_interface_info*, %struct.acpi_interface_info** %6, align 8
  %73 = getelementptr inbounds %struct.acpi_interface_info, %struct.acpi_interface_info* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* @acpi_gbl_osi_data, align 8
  br label %75

75:                                               ; preds = %71, %65
  %76 = load i64, i64* @ACPI_UINT64_MAX, align 8
  store i64 %76, i64* %9, align 8
  br label %77

77:                                               ; preds = %75, %58, %50
  %78 = load i32, i32* @acpi_gbl_osi_mutex, align 4
  %79 = call i32 @acpi_os_release_mutex(i32 %78)
  store i64 (i32, i32)* @acpi_gbl_interface_handler, i64 (i32, i32)** %7, align 8
  %80 = load i64 (i32, i32)*, i64 (i32, i32)** %7, align 8
  %81 = icmp ne i64 (i32, i32)* %80, null
  br i1 %81, label %82, label %95

82:                                               ; preds = %77
  %83 = load i64 (i32, i32)*, i64 (i32, i32)** %7, align 8
  %84 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %85 = bitcast %union.acpi_operand_object* %84 to %struct.TYPE_7__*
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i64, i64* %9, align 8
  %89 = trunc i64 %88 to i32
  %90 = call i64 %83(i32 %87, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = load i64, i64* @ACPI_UINT64_MAX, align 8
  store i64 %93, i64* %9, align 8
  br label %94

94:                                               ; preds = %92, %82
  br label %95

95:                                               ; preds = %94, %77
  %96 = load i32, i32* @ACPI_DB_INFO, align 4
  %97 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %98 = bitcast %union.acpi_operand_object* %97 to %struct.TYPE_7__*
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i64, i64* %9, align 8
  %102 = icmp eq i64 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %105 = ptrtoint i8* %104 to i32
  %106 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %105)
  %107 = load i64, i64* %9, align 8
  %108 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %109 = bitcast %union.acpi_operand_object* %108 to %struct.TYPE_8__*
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  store i64 %107, i64* %110, align 8
  %111 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %112 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %113 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %112, i32 0, i32 0
  store %union.acpi_operand_object* %111, %union.acpi_operand_object** %113, align 8
  %114 = load i32, i32* @AE_OK, align 4
  %115 = call i32 @return_ACPI_STATUS(i32 %114)
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i32 @acpi_os_acquire_mutex(i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local %struct.acpi_interface_info* @acpi_ut_get_interface(i32) #1

declare dso_local i32 @acpi_os_release_mutex(i32) #1

declare dso_local i64 @acpi_gbl_interface_handler(i32, i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT_RAW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
