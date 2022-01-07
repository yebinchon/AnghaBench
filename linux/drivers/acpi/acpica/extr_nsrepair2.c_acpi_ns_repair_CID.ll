; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsrepair2.c_acpi_ns_repair_CID.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsrepair2.c_acpi_ns_repair_CID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_evaluate_info = type { i32 }
%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64, %union.acpi_operand_object** }

@ACPI_TYPE_STRING = common dso_local global i64 0, align 8
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_evaluate_info*, %union.acpi_operand_object**)* @acpi_ns_repair_CID to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ns_repair_CID(%struct.acpi_evaluate_info* %0, %union.acpi_operand_object** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_evaluate_info*, align 8
  %5 = alloca %union.acpi_operand_object**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca %union.acpi_operand_object**, align 8
  %9 = alloca %union.acpi_operand_object*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.acpi_evaluate_info* %0, %struct.acpi_evaluate_info** %4, align 8
  store %union.acpi_operand_object** %1, %union.acpi_operand_object*** %5, align 8
  %12 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  store %union.acpi_operand_object* %13, %union.acpi_operand_object** %7, align 8
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %15 = bitcast %union.acpi_operand_object* %14 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ACPI_TYPE_STRING, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %22 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %23 = call i32 @acpi_ns_repair_HID(%struct.acpi_evaluate_info* %21, %union.acpi_operand_object** %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %80

25:                                               ; preds = %2
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %27 = bitcast %union.acpi_operand_object* %26 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @AE_OK, align 4
  store i32 %33, i32* %3, align 4
  br label %80

34:                                               ; preds = %25
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %36 = bitcast %union.acpi_operand_object* %35 to %struct.TYPE_3__*
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %37, align 8
  store %union.acpi_operand_object** %38, %union.acpi_operand_object*** %8, align 8
  store i64 0, i64* %11, align 8
  br label %39

39:                                               ; preds = %75, %34
  %40 = load i64, i64* %11, align 8
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %42 = bitcast %union.acpi_operand_object* %41 to %struct.TYPE_3__*
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %40, %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %39
  %47 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %47, align 8
  store %union.acpi_operand_object* %48, %union.acpi_operand_object** %9, align 8
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %50 = bitcast %union.acpi_operand_object* %49 to %struct.TYPE_4__*
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %10, align 4
  %53 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %54 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %55 = call i32 @acpi_ns_repair_HID(%struct.acpi_evaluate_info* %53, %union.acpi_operand_object** %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @ACPI_FAILURE(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %46
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %80

61:                                               ; preds = %46
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %63 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %64 = load %union.acpi_operand_object*, %union.acpi_operand_object** %63, align 8
  %65 = icmp ne %union.acpi_operand_object* %62, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* %10, align 4
  %68 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %69 = load %union.acpi_operand_object*, %union.acpi_operand_object** %68, align 8
  %70 = bitcast %union.acpi_operand_object* %69 to %struct.TYPE_4__*
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i32 %67, i32* %71, align 8
  br label %72

72:                                               ; preds = %66, %61
  %73 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %74 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %73, i32 1
  store %union.acpi_operand_object** %74, %union.acpi_operand_object*** %8, align 8
  br label %75

75:                                               ; preds = %72
  %76 = load i64, i64* %11, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %11, align 8
  br label %39

78:                                               ; preds = %39
  %79 = load i32, i32* @AE_OK, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %59, %32, %20
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @acpi_ns_repair_HID(%struct.acpi_evaluate_info*, %union.acpi_operand_object**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
