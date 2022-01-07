; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsrepair2.c_acpi_ns_complex_repairs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsrepair2.c_acpi_ns_complex_repairs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_evaluate_info = type { i32 }
%struct.acpi_namespace_node = type { i32 }
%union.acpi_operand_object = type { i32 }
%struct.acpi_repair_info = type { i32 (%struct.acpi_evaluate_info.0*, %union.acpi_operand_object**)* }
%struct.acpi_evaluate_info.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_complex_repairs(%struct.acpi_evaluate_info* %0, %struct.acpi_namespace_node* %1, i32 %2, %union.acpi_operand_object** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_evaluate_info*, align 8
  %7 = alloca %struct.acpi_namespace_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.acpi_operand_object**, align 8
  %10 = alloca %struct.acpi_repair_info*, align 8
  %11 = alloca i32, align 4
  store %struct.acpi_evaluate_info* %0, %struct.acpi_evaluate_info** %6, align 8
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %7, align 8
  store i32 %2, i32* %8, align 4
  store %union.acpi_operand_object** %3, %union.acpi_operand_object*** %9, align 8
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %13 = call %struct.acpi_repair_info* @acpi_ns_match_complex_repair(%struct.acpi_namespace_node* %12)
  store %struct.acpi_repair_info* %13, %struct.acpi_repair_info** %10, align 8
  %14 = load %struct.acpi_repair_info*, %struct.acpi_repair_info** %10, align 8
  %15 = icmp ne %struct.acpi_repair_info* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %5, align 4
  br label %27

18:                                               ; preds = %4
  %19 = load %struct.acpi_repair_info*, %struct.acpi_repair_info** %10, align 8
  %20 = getelementptr inbounds %struct.acpi_repair_info, %struct.acpi_repair_info* %19, i32 0, i32 0
  %21 = load i32 (%struct.acpi_evaluate_info.0*, %union.acpi_operand_object**)*, i32 (%struct.acpi_evaluate_info.0*, %union.acpi_operand_object**)** %20, align 8
  %22 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %6, align 8
  %23 = bitcast %struct.acpi_evaluate_info* %22 to %struct.acpi_evaluate_info.0*
  %24 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %9, align 8
  %25 = call i32 %21(%struct.acpi_evaluate_info.0* %23, %union.acpi_operand_object** %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %18, %16
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local %struct.acpi_repair_info* @acpi_ns_match_complex_repair(%struct.acpi_namespace_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
