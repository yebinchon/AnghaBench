; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsprepkg.c_acpi_ns_custom_package.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsprepkg.c_acpi_ns_custom_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_evaluate_info = type { i32, i32 }
%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@AE_OK = common dso_local global i32 0, align 4
@ns_custom_package = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Return Package has invalid object type for version number\00", align 1
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Return Package is too small - found %u elements, expected %u\00", align 1
@AE_AML_OPERAND_VALUE = common dso_local global i32 0, align 4
@ACPI_DB_REPAIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"%s: Return Package is larger than needed - found %u, expected %u\0A\00", align 1
@ACPI_RTYPE_INTEGER = common dso_local global i32 0, align 4
@ACPI_RTYPE_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_evaluate_info*, %union.acpi_operand_object**, i64)* @acpi_ns_custom_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ns_custom_package(%struct.acpi_evaluate_info* %0, %union.acpi_operand_object** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_evaluate_info*, align 8
  %6 = alloca %union.acpi_operand_object**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.acpi_evaluate_info* %0, %struct.acpi_evaluate_info** %5, align 8
  store %union.acpi_operand_object** %1, %union.acpi_operand_object*** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* @AE_OK, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* @ns_custom_package, align 4
  %13 = call i32 @ACPI_FUNCTION_NAME(i32 %12)
  %14 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %14, align 8
  %16 = bitcast %union.acpi_operand_object* %15 to %struct.TYPE_3__*
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %3
  %22 = load i32, i32* @AE_INFO, align 4
  %23 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %5, align 8
  %24 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %5, align 8
  %27 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ACPI_WARN_PREDEFINED(i32 ptrtoint ([58 x i8]* @.str to i32))
  %30 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %31 = call i32 @return_ACPI_STATUS(i32 %30)
  br label %32

32:                                               ; preds = %21, %3
  %33 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %33, align 8
  %35 = bitcast %union.acpi_operand_object* %34 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %9, align 8
  store i64 21, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i64 20, i64* %8, align 8
  br label %41

41:                                               ; preds = %40, %32
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load i32, i32* @AE_INFO, align 4
  %47 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %5, align 8
  %48 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %5, align 8
  %51 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @ACPI_WARN_PREDEFINED(i32 %55)
  %57 = load i32, i32* @AE_AML_OPERAND_VALUE, align 4
  %58 = call i32 @return_ACPI_STATUS(i32 %57)
  br label %73

59:                                               ; preds = %41
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load i32, i32* @ACPI_DB_REPAIR, align 4
  %65 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %5, align 8
  %66 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %8, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @ACPI_DEBUG_PRINT(i32 %70)
  br label %72

72:                                               ; preds = %63, %59
  br label %73

73:                                               ; preds = %72, %45
  %74 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %5, align 8
  %75 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %76 = load i32, i32* @ACPI_RTYPE_INTEGER, align 4
  %77 = load i32, i32* @ACPI_RTYPE_STRING, align 4
  %78 = call i32 @acpi_ns_check_package_elements(%struct.acpi_evaluate_info* %74, %union.acpi_operand_object** %75, i32 %76, i32 16, i32 %77, i32 4, i32 0)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i64 @ACPI_FAILURE(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %73
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @return_ACPI_STATUS(i32 %83)
  br label %85

85:                                               ; preds = %82, %73
  %86 = load i64, i64* %9, align 8
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %5, align 8
  %90 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %91 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %90, i64 20
  %92 = load i32, i32* @ACPI_RTYPE_INTEGER, align 4
  %93 = call i32 @acpi_ns_check_package_elements(%struct.acpi_evaluate_info* %89, %union.acpi_operand_object** %91, i32 %92, i32 1, i32 0, i32 0, i32 20)
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %88, %85
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @return_ACPI_STATUS(i32 %95)
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @ACPI_WARN_PREDEFINED(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ns_check_package_elements(%struct.acpi_evaluate_info*, %union.acpi_operand_object**, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
