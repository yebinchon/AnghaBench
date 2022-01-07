; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsrepair2.c_acpi_ns_repair_PSS.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsrepair2.c_acpi_ns_repair_PSS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_evaluate_info = type { i32, i32 }
%union.acpi_operand_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %union.acpi_operand_object** }
%struct.TYPE_4__ = type { i64 }

@ACPI_SORT_DESCENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"CpuFrequency\00", align 1
@ACPI_UINT32_MAX = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"SubPackage[%u,%u] - suspicious power dissipation values\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_evaluate_info*, %union.acpi_operand_object**)* @acpi_ns_repair_PSS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ns_repair_PSS(%struct.acpi_evaluate_info* %0, %union.acpi_operand_object** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_evaluate_info*, align 8
  %5 = alloca %union.acpi_operand_object**, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %union.acpi_operand_object**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %union.acpi_operand_object**, align 8
  %10 = alloca %union.acpi_operand_object*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.acpi_evaluate_info* %0, %struct.acpi_evaluate_info** %4, align 8
  store %union.acpi_operand_object** %1, %union.acpi_operand_object*** %5, align 8
  %14 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %14, align 8
  store %union.acpi_operand_object* %15, %union.acpi_operand_object** %6, align 8
  %16 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %18 = load i32, i32* @ACPI_SORT_DESCENDING, align 4
  %19 = call i32 @acpi_ns_check_sorted_list(%struct.acpi_evaluate_info* %16, %union.acpi_operand_object* %17, i32 0, i32 6, i32 0, i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = call i64 @ACPI_FAILURE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %3, align 4
  br label %79

25:                                               ; preds = %2
  %26 = load i64, i64* @ACPI_UINT32_MAX, align 8
  store i64 %26, i64* %11, align 8
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %28 = bitcast %union.acpi_operand_object* %27 to %struct.TYPE_3__*
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %29, align 8
  store %union.acpi_operand_object** %30, %union.acpi_operand_object*** %7, align 8
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %32 = bitcast %union.acpi_operand_object* %31 to %struct.TYPE_3__*
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %8, align 8
  store i64 0, i64* %13, align 8
  br label %35

35:                                               ; preds = %74, %25
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %77

39:                                               ; preds = %35
  %40 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %7, align 8
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %40, align 8
  %42 = bitcast %union.acpi_operand_object* %41 to %struct.TYPE_3__*
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %43, align 8
  store %union.acpi_operand_object** %44, %union.acpi_operand_object*** %9, align 8
  %45 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %9, align 8
  %46 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %45, i64 1
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %46, align 8
  store %union.acpi_operand_object* %47, %union.acpi_operand_object** %10, align 8
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %49 = bitcast %union.acpi_operand_object* %48 to %struct.TYPE_4__*
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %11, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %39
  %55 = load i32, i32* @AE_INFO, align 4
  %56 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %57 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %60 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* %13, align 8
  %63 = sub nsw i64 %62, 1
  %64 = load i64, i64* %13, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @ACPI_WARN_PREDEFINED(i32 %65)
  br label %67

67:                                               ; preds = %54, %39
  %68 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %69 = bitcast %union.acpi_operand_object* %68 to %struct.TYPE_4__*
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %11, align 8
  %72 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %7, align 8
  %73 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %72, i32 1
  store %union.acpi_operand_object** %73, %union.acpi_operand_object*** %7, align 8
  br label %74

74:                                               ; preds = %67
  %75 = load i64, i64* %13, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %13, align 8
  br label %35

77:                                               ; preds = %35
  %78 = load i32, i32* @AE_OK, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %23
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @acpi_ns_check_sorted_list(%struct.acpi_evaluate_info*, %union.acpi_operand_object*, i32, i32, i32, i32, i8*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_WARN_PREDEFINED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
