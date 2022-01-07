; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsprepkg.c_acpi_ns_check_package_elements.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsprepkg.c_acpi_ns_check_package_elements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_evaluate_info = type { i32 }
%union.acpi_operand_object = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_evaluate_info*, %union.acpi_operand_object**, i32, i64, i32, i64, i64)* @acpi_ns_check_package_elements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ns_check_package_elements(%struct.acpi_evaluate_info* %0, %union.acpi_operand_object** %1, i32 %2, i64 %3, i32 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.acpi_evaluate_info*, align 8
  %10 = alloca %union.acpi_operand_object**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %union.acpi_operand_object**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.acpi_evaluate_info* %0, %struct.acpi_evaluate_info** %9, align 8
  store %union.acpi_operand_object** %1, %union.acpi_operand_object*** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %19 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %10, align 8
  store %union.acpi_operand_object** %19, %union.acpi_operand_object*** %16, align 8
  store i64 0, i64* %18, align 8
  br label %20

20:                                               ; preds = %40, %7
  %21 = load i64, i64* %18, align 8
  %22 = load i64, i64* %12, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %20
  %25 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %9, align 8
  %26 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %16, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i64, i64* %18, align 8
  %29 = load i64, i64* %15, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info* %25, %union.acpi_operand_object** %26, i32 %27, i64 %30)
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = call i64 @ACPI_FAILURE(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* %17, align 4
  store i32 %36, i32* %8, align 4
  br label %71

37:                                               ; preds = %24
  %38 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %16, align 8
  %39 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %38, i32 1
  store %union.acpi_operand_object** %39, %union.acpi_operand_object*** %16, align 8
  br label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %18, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %18, align 8
  br label %20

43:                                               ; preds = %20
  store i64 0, i64* %18, align 8
  br label %44

44:                                               ; preds = %66, %43
  %45 = load i64, i64* %18, align 8
  %46 = load i64, i64* %14, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %44
  %49 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %9, align 8
  %50 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %16, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i64, i64* %18, align 8
  %53 = load i64, i64* %12, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i64, i64* %15, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info* %49, %union.acpi_operand_object** %50, i32 %51, i64 %56)
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = call i64 @ACPI_FAILURE(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load i32, i32* %17, align 4
  store i32 %62, i32* %8, align 4
  br label %71

63:                                               ; preds = %48
  %64 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %16, align 8
  %65 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %64, i32 1
  store %union.acpi_operand_object** %65, %union.acpi_operand_object*** %16, align 8
  br label %66

66:                                               ; preds = %63
  %67 = load i64, i64* %18, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %18, align 8
  br label %44

69:                                               ; preds = %44
  %70 = load i32, i32* @AE_OK, align 4
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %69, %61, %35
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info*, %union.acpi_operand_object**, i32, i64) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
