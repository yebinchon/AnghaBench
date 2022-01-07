; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utdelete.c_acpi_ut_update_ref_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utdelete.c_acpi_ut_update_ref_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@ut_update_ref_count = common dso_local global i32 0, align 4
@acpi_gbl_reference_count_lock = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Obj %p, Reference Count was zero before increment\0A\00", align 1
@ACPI_DB_ALLOCATIONS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Obj %p Type %.2X [%s] Refs %.2X [Incremented]\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Incremement\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"Obj %p, Reference Count is already zero, cannot decrement\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"%s: Obj %p Type %.2X Refs %.2X [Decremented]\0A\00", align 1
@ACPI_GET_FUNCTION_NAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"Decrement\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Unknown Reference Count action (0x%X)\00", align 1
@ACPI_MAX_REFERENCE_COUNT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [68 x i8] c"Large Reference Count (0x%X) in object %p, Type=0x%.2X Operation=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.acpi_operand_object*, i32)* @acpi_ut_update_ref_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_ut_update_ref_count(%union.acpi_operand_object* %0, i32 %1) #0 {
  %3 = alloca %union.acpi_operand_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %6, align 8
  %9 = load i32, i32* @ut_update_ref_count, align 4
  %10 = call i32 @ACPI_FUNCTION_NAME(i32 %9)
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %12 = icmp ne %union.acpi_operand_object* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %111

14:                                               ; preds = %2
  %15 = load i32, i32* @acpi_gbl_reference_count_lock, align 4
  %16 = call i32 @acpi_os_acquire_lock(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %18 = bitcast %union.acpi_operand_object* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %89 [
    i32 128, label %22
    i32 129, label %51
  ]

22:                                               ; preds = %14
  %23 = load i64, i64* %5, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %27 = bitcast %union.acpi_operand_object* %26 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  %29 = load i32, i32* @acpi_gbl_reference_count_lock, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @acpi_os_release_lock(i32 %29, i32 %30)
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %22
  %35 = load i32, i32* @AE_INFO, align 4
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %37 = ptrtoint %union.acpi_operand_object* %36 to i32
  %38 = call i32 @ACPI_WARNING(i32 %37)
  br label %39

39:                                               ; preds = %34, %22
  %40 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %43 = bitcast %union.acpi_operand_object* %42 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %47 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %46)
  %48 = load i64, i64* %6, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @ACPI_DEBUG_PRINT(i32 %49)
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %96

51:                                               ; preds = %14
  %52 = load i64, i64* %5, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i64, i64* %5, align 8
  %56 = sub nsw i64 %55, 1
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %59 = bitcast %union.acpi_operand_object* %58 to %struct.TYPE_2__*
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  br label %61

61:                                               ; preds = %54, %51
  %62 = load i32, i32* @acpi_gbl_reference_count_lock, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @acpi_os_release_lock(i32 %62, i32 %63)
  %65 = load i64, i64* %5, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* @AE_INFO, align 4
  %69 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %70 = ptrtoint %union.acpi_operand_object* %69 to i32
  %71 = call i32 @ACPI_WARNING(i32 %70)
  br label %72

72:                                               ; preds = %67, %61
  %73 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %74 = load i32, i32* @ACPI_GET_FUNCTION_NAME, align 4
  %75 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %77 = bitcast %union.acpi_operand_object* %76 to %struct.TYPE_2__*
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i64, i64* %6, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %81)
  %83 = load i64, i64* %6, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %72
  %86 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %87 = call i32 @acpi_ut_delete_internal_obj(%union.acpi_operand_object* %86)
  br label %88

88:                                               ; preds = %85, %72
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %96

89:                                               ; preds = %14
  %90 = load i32, i32* @acpi_gbl_reference_count_lock, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @acpi_os_release_lock(i32 %90, i32 %91)
  %93 = load i32, i32* @AE_INFO, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @ACPI_ERROR(i32 %94)
  br label %111

96:                                               ; preds = %88, %39
  %97 = load i64, i64* %6, align 8
  %98 = load i64, i64* @ACPI_MAX_REFERENCE_COUNT, align 8
  %99 = icmp sgt i64 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %96
  %101 = load i32, i32* @AE_INFO, align 4
  %102 = load i64, i64* %6, align 8
  %103 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %104 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %105 = bitcast %union.acpi_operand_object* %104 to %struct.TYPE_2__*
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = ptrtoint i8* %108 to i32
  %110 = call i32 @ACPI_WARNING(i32 %109)
  br label %111

111:                                              ; preds = %13, %89, %100, %96
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @acpi_os_acquire_lock(i32) #1

declare dso_local i32 @acpi_os_release_lock(i32, i32) #1

declare dso_local i32 @ACPI_WARNING(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT_RAW(i32) #1

declare dso_local i32 @acpi_ut_delete_internal_obj(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
