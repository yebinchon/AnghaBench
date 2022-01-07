; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsrepair2.c_acpi_ns_repair_TSS.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsrepair2.c_acpi_ns_repair_TSS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_evaluate_info = type { i32 }
%union.acpi_operand_object = type { i32 }
%struct.acpi_namespace_node = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"^_PSS\00", align 1
@ACPI_NS_NO_UPSEARCH = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@ACPI_SORT_DESCENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"PowerDissipation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_evaluate_info*, %union.acpi_operand_object**)* @acpi_ns_repair_TSS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ns_repair_TSS(%struct.acpi_evaluate_info* %0, %union.acpi_operand_object** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_evaluate_info*, align 8
  %5 = alloca %union.acpi_operand_object**, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_namespace_node*, align 8
  store %struct.acpi_evaluate_info* %0, %struct.acpi_evaluate_info** %4, align 8
  store %union.acpi_operand_object** %1, %union.acpi_operand_object*** %5, align 8
  %9 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  store %union.acpi_operand_object* %10, %union.acpi_operand_object** %6, align 8
  %11 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %12 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ACPI_NS_NO_UPSEARCH, align 4
  %15 = call i32 @acpi_ns_get_node(i32 %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %14, %struct.acpi_namespace_node** %8)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @ACPI_SUCCESS(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @AE_OK, align 4
  store i32 %20, i32* %3, align 4
  br label %27

21:                                               ; preds = %2
  %22 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %24 = load i32, i32* @ACPI_SORT_DESCENDING, align 4
  %25 = call i32 @acpi_ns_check_sorted_list(%struct.acpi_evaluate_info* %22, %union.acpi_operand_object* %23, i32 0, i32 5, i32 1, i32 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %21, %19
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @acpi_ns_get_node(i32, i8*, i32, %struct.acpi_namespace_node**) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_ns_check_sorted_list(%struct.acpi_evaluate_info*, %union.acpi_operand_object*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
