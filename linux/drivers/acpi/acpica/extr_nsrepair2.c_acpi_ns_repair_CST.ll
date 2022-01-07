; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsrepair2.c_acpi_ns_repair_CST.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsrepair2.c_acpi_ns_repair_CST.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_evaluate_info = type { i32, i32 }
%union.acpi_operand_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %union.acpi_operand_object** }
%struct.TYPE_4__ = type { i32 }

@ns_repair_CST = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"SubPackage[%u] - removing entry due to zero count\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"SubPackage[%u] - removing entry due to invalid Type(0)\00", align 1
@ACPI_SORT_ASCENDING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"C-State Type\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_evaluate_info*, %union.acpi_operand_object**)* @acpi_ns_repair_CST to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ns_repair_CST(%struct.acpi_evaluate_info* %0, %union.acpi_operand_object** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_evaluate_info*, align 8
  %5 = alloca %union.acpi_operand_object**, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %union.acpi_operand_object**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.acpi_operand_object*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.acpi_evaluate_info* %0, %struct.acpi_evaluate_info** %4, align 8
  store %union.acpi_operand_object** %1, %union.acpi_operand_object*** %5, align 8
  %13 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  store %union.acpi_operand_object* %14, %union.acpi_operand_object** %6, align 8
  %15 = load i32, i32* @ns_repair_CST, align 4
  %16 = call i32 @ACPI_FUNCTION_NAME(i32 %15)
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %18 = bitcast %union.acpi_operand_object* %17 to %struct.TYPE_3__*
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %91, %2
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %92

26:                                               ; preds = %22
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %28 = bitcast %union.acpi_operand_object* %27 to %struct.TYPE_3__*
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %29, align 8
  %31 = load i32, i32* %12, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %30, i64 %33
  store %union.acpi_operand_object** %34, %union.acpi_operand_object*** %7, align 8
  %35 = load i64, i64* @FALSE, align 8
  store i64 %35, i64* %11, align 8
  %36 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %7, align 8
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %36, align 8
  %38 = bitcast %union.acpi_operand_object* %37 to %struct.TYPE_3__*
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %26
  %43 = load i32, i32* @AE_INFO, align 4
  %44 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %45 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %48 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @ACPI_WARN_PREDEFINED(i32 %50)
  %52 = load i64, i64* @TRUE, align 8
  store i64 %52, i64* %11, align 8
  br label %78

53:                                               ; preds = %26
  %54 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %7, align 8
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %54, align 8
  %56 = bitcast %union.acpi_operand_object* %55 to %struct.TYPE_3__*
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %57, align 8
  %59 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %58, i64 1
  %60 = load %union.acpi_operand_object*, %union.acpi_operand_object** %59, align 8
  store %union.acpi_operand_object* %60, %union.acpi_operand_object** %9, align 8
  %61 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %62 = bitcast %union.acpi_operand_object* %61 to %struct.TYPE_4__*
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %53
  %67 = load i32, i32* @AE_INFO, align 4
  %68 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %69 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %72 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @ACPI_WARN_PREDEFINED(i32 %74)
  %76 = load i64, i64* @TRUE, align 8
  store i64 %76, i64* %11, align 8
  br label %77

77:                                               ; preds = %66, %53
  br label %78

78:                                               ; preds = %77, %42
  %79 = load i64, i64* %11, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 1
  %85 = call i32 @acpi_ns_remove_element(%union.acpi_operand_object* %82, i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %8, align 4
  br label %91

88:                                               ; preds = %78
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %88, %81
  br label %22

92:                                               ; preds = %22
  %93 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %94 = bitcast %union.acpi_operand_object* %93 to %struct.TYPE_3__*
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %95, align 8
  %97 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %96, i64 0
  %98 = load %union.acpi_operand_object*, %union.acpi_operand_object** %97, align 8
  store %union.acpi_operand_object* %98, %union.acpi_operand_object** %9, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %101 = bitcast %union.acpi_operand_object* %100 to %struct.TYPE_4__*
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  %103 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %104 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %105 = load i32, i32* @ACPI_SORT_ASCENDING, align 4
  %106 = call i32 @acpi_ns_check_sorted_list(%struct.acpi_evaluate_info* %103, %union.acpi_operand_object* %104, i32 1, i32 4, i32 1, i32 %105, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i64 @ACPI_FAILURE(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %92
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %3, align 4
  br label %114

112:                                              ; preds = %92
  %113 = load i32, i32* @AE_OK, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @ACPI_WARN_PREDEFINED(i32) #1

declare dso_local i32 @acpi_ns_remove_element(%union.acpi_operand_object*, i32) #1

declare dso_local i32 @acpi_ns_check_sorted_list(%struct.acpi_evaluate_info*, %union.acpi_operand_object*, i32, i32, i32, i32, i8*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
