; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nswalk.c_acpi_ns_get_next_node_typed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nswalk.c_acpi_ns_get_next_node_typed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i64, %struct.acpi_namespace_node* }

@ACPI_TYPE_ANY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.acpi_namespace_node* @acpi_ns_get_next_node_typed(i64 %0, %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node* %2) #0 {
  %4 = alloca %struct.acpi_namespace_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.acpi_namespace_node*, align 8
  %7 = alloca %struct.acpi_namespace_node*, align 8
  %8 = alloca %struct.acpi_namespace_node*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %6, align 8
  store %struct.acpi_namespace_node* %2, %struct.acpi_namespace_node** %7, align 8
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %8, align 8
  %9 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %12 = call %struct.acpi_namespace_node* @acpi_ns_get_next_node(%struct.acpi_namespace_node* %10, %struct.acpi_namespace_node* %11)
  store %struct.acpi_namespace_node* %12, %struct.acpi_namespace_node** %8, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @ACPI_TYPE_ANY, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %8, align 8
  store %struct.acpi_namespace_node* %17, %struct.acpi_namespace_node** %4, align 8
  br label %35

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %30, %18
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %8, align 8
  %21 = icmp ne %struct.acpi_namespace_node* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %8, align 8
  %24 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %8, align 8
  store %struct.acpi_namespace_node* %29, %struct.acpi_namespace_node** %4, align 8
  br label %35

30:                                               ; preds = %22
  %31 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %8, align 8
  %32 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %31, i32 0, i32 1
  %33 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %32, align 8
  store %struct.acpi_namespace_node* %33, %struct.acpi_namespace_node** %8, align 8
  br label %19

34:                                               ; preds = %19
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %4, align 8
  br label %35

35:                                               ; preds = %34, %28, %16
  %36 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  ret %struct.acpi_namespace_node* %36
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local %struct.acpi_namespace_node* @acpi_ns_get_next_node(%struct.acpi_namespace_node*, %struct.acpi_namespace_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
