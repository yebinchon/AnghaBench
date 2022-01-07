; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsrepair2.c_acpi_ns_repair_PRT.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsrepair2.c_acpi_ns_repair_PRT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_evaluate_info = type { i32, i32, i32 }
%union.acpi_operand_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %union.acpi_operand_object** }
%struct.TYPE_4__ = type { i64 }

@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@ACPI_OBJECT_REPAIRED = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"PRT[%X]: Fixed reversed SourceName and SourceIndex\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_evaluate_info*, %union.acpi_operand_object**)* @acpi_ns_repair_PRT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ns_repair_PRT(%struct.acpi_evaluate_info* %0, %union.acpi_operand_object** %1) #0 {
  %3 = alloca %struct.acpi_evaluate_info*, align 8
  %4 = alloca %union.acpi_operand_object**, align 8
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca %union.acpi_operand_object**, align 8
  %7 = alloca %union.acpi_operand_object**, align 8
  %8 = alloca %union.acpi_operand_object*, align 8
  %9 = alloca %union.acpi_operand_object*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.acpi_evaluate_info* %0, %struct.acpi_evaluate_info** %3, align 8
  store %union.acpi_operand_object** %1, %union.acpi_operand_object*** %4, align 8
  %12 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  store %union.acpi_operand_object* %13, %union.acpi_operand_object** %5, align 8
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %15 = bitcast %union.acpi_operand_object* %14 to %struct.TYPE_3__*
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %16, align 8
  store %union.acpi_operand_object** %17, %union.acpi_operand_object*** %6, align 8
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %19 = bitcast %union.acpi_operand_object* %18 to %struct.TYPE_3__*
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %22

22:                                               ; preds = %77, %2
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %82

26:                                               ; preds = %22
  %27 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %27, align 8
  store %union.acpi_operand_object* %28, %union.acpi_operand_object** %9, align 8
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %30 = bitcast %union.acpi_operand_object* %29 to %struct.TYPE_3__*
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %31, align 8
  store %union.acpi_operand_object** %32, %union.acpi_operand_object*** %7, align 8
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %34 = bitcast %union.acpi_operand_object* %33 to %struct.TYPE_3__*
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %36, 4
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %77

39:                                               ; preds = %26
  %40 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %7, align 8
  %41 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %40, i64 3
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %41, align 8
  store %union.acpi_operand_object* %42, %union.acpi_operand_object** %8, align 8
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %44 = icmp ne %union.acpi_operand_object* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %47 = bitcast %union.acpi_operand_object* %46 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %45, %39
  %53 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %7, align 8
  %54 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %53, i64 2
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %54, align 8
  %56 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %7, align 8
  %57 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %56, i64 3
  store %union.acpi_operand_object* %55, %union.acpi_operand_object** %57, align 8
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %59 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %7, align 8
  %60 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %59, i64 2
  store %union.acpi_operand_object* %58, %union.acpi_operand_object** %60, align 8
  %61 = load i32, i32* @ACPI_OBJECT_REPAIRED, align 4
  %62 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %63 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @AE_INFO, align 4
  %67 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %68 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %71 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %11, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @ACPI_WARN_PREDEFINED(i32 %74)
  br label %76

76:                                               ; preds = %52, %45
  br label %77

77:                                               ; preds = %76, %38
  %78 = load i64, i64* %11, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %11, align 8
  %80 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %81 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %80, i32 1
  store %union.acpi_operand_object** %81, %union.acpi_operand_object*** %6, align 8
  br label %22

82:                                               ; preds = %22
  %83 = load i32, i32* @AE_OK, align 4
  ret i32 %83
}

declare dso_local i32 @ACPI_WARN_PREDEFINED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
