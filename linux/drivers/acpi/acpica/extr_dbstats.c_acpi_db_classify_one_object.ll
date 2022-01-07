; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbstats.c_acpi_db_classify_one_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbstats.c_acpi_db_classify_one_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.acpi_namespace_node = type { i64 }
%union.acpi_operand_object = type { i32 }

@acpi_gbl_num_nodes = common dso_local global i32 0, align 4
@ACPI_TYPE_NS_NODE_MAX = common dso_local global i64 0, align 8
@acpi_gbl_node_type_count_misc = common dso_local global i32 0, align 4
@acpi_gbl_node_type_count = common dso_local global i32* null, align 8
@AE_OK = common dso_local global i32 0, align 4
@is_method = common dso_local global i64 0, align 8
@num_grammar_elements = common dso_local global i64 0, align 8
@num_method_elements = common dso_local global i64 0, align 8
@num_nodes = common dso_local global i64 0, align 8
@op = common dso_local global %struct.TYPE_4__* null, align 8
@root = common dso_local global i32 0, align 4
@size_of_acpi_objects = common dso_local global i64 0, align 8
@size_of_method_trees = common dso_local global i64 0, align 8
@size_of_node_entries = common dso_local global i64 0, align 8
@size_of_parse_tree = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i8*, i8**)* @acpi_db_classify_one_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_db_classify_one_object(i64 %0, i64 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.acpi_namespace_node*, align 8
  %10 = alloca %union.acpi_operand_object*, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i8** %3, i8*** %8, align 8
  %12 = load i32, i32* @acpi_gbl_num_nodes, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @acpi_gbl_num_nodes, align 4
  %14 = load i64, i64* %5, align 8
  %15 = inttoptr i64 %14 to %struct.acpi_namespace_node*
  store %struct.acpi_namespace_node* %15, %struct.acpi_namespace_node** %9, align 8
  %16 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %17 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %16)
  store %union.acpi_operand_object* %17, %union.acpi_operand_object** %10, align 8
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %19 = call i32 @acpi_db_enumerate_object(%union.acpi_operand_object* %18)
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %21 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* @ACPI_TYPE_NS_NODE_MAX, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @acpi_gbl_node_type_count_misc, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @acpi_gbl_node_type_count_misc, align 4
  br label %35

29:                                               ; preds = %4
  %30 = load i32*, i32** @acpi_gbl_node_type_count, align 8
  %31 = load i64, i64* %11, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %26
  %36 = load i32, i32* @AE_OK, align 4
  ret i32 %36
}

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_db_enumerate_object(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
