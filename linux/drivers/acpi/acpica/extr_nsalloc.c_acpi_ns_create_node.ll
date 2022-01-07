; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsalloc.c_acpi_ns_create_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsalloc.c_acpi_ns_create_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.acpi_namespace_node = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ns_create_node = common dso_local global i32 0, align 4
@acpi_gbl_namespace_cache = common dso_local global i32 0, align 4
@acpi_gbl_ns_node_list = common dso_local global %struct.TYPE_4__* null, align 8
@ACPI_DESC_TYPE_NAMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.acpi_namespace_node* @acpi_ns_create_node(i64 %0) #0 {
  %2 = alloca %struct.acpi_namespace_node*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.acpi_namespace_node*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i32, i32* @ns_create_node, align 4
  %6 = call i32 @ACPI_FUNCTION_TRACE(i32 %5)
  %7 = load i32, i32* @acpi_gbl_namespace_cache, align 4
  %8 = call %struct.acpi_namespace_node* @acpi_os_acquire_object(i32 %7)
  store %struct.acpi_namespace_node* %8, %struct.acpi_namespace_node** %4, align 8
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %10 = icmp ne %struct.acpi_namespace_node* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 @return_PTR(%struct.acpi_namespace_node* null)
  br label %13

13:                                               ; preds = %11, %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @acpi_gbl_ns_node_list, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* %15, align 8
  %18 = trunc i64 %16 to i32
  %19 = call i32 @ACPI_MEM_TRACKING(i32 %18)
  %20 = load i64, i64* %3, align 8
  %21 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %22 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %25 = load i32, i32* @ACPI_DESC_TYPE_NAMED, align 4
  %26 = call i32 @ACPI_SET_DESCRIPTOR_TYPE(%struct.acpi_namespace_node* %24, i32 %25)
  %27 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %28 = call i32 @return_PTR(%struct.acpi_namespace_node* %27)
  %29 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  ret %struct.acpi_namespace_node* %29
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %struct.acpi_namespace_node* @acpi_os_acquire_object(i32) #1

declare dso_local i32 @return_PTR(%struct.acpi_namespace_node*) #1

declare dso_local i32 @ACPI_MEM_TRACKING(i32) #1

declare dso_local i32 @ACPI_SET_DESCRIPTOR_TYPE(%struct.acpi_namespace_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
