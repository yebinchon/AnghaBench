; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsalloc.c_acpi_ns_delete_children.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsalloc.c_acpi_ns_delete_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { %struct.acpi_namespace_node*, %struct.acpi_namespace_node* }

@ns_delete_children = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Found a grandchild! P=%p C=%p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ns_delete_children(%struct.acpi_namespace_node* %0) #0 {
  %2 = alloca %struct.acpi_namespace_node*, align 8
  %3 = alloca %struct.acpi_namespace_node*, align 8
  %4 = alloca %struct.acpi_namespace_node*, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %2, align 8
  %5 = load i32, i32* @ns_delete_children, align 4
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %7 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %5, %struct.acpi_namespace_node* %6)
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %9 = icmp ne %struct.acpi_namespace_node* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @return_VOID, align 4
  br label %12

12:                                               ; preds = %10, %1
  %13 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %14 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %13, i32 0, i32 0
  %15 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %14, align 8
  store %struct.acpi_namespace_node* %15, %struct.acpi_namespace_node** %3, align 8
  br label %16

16:                                               ; preds = %30, %12
  %17 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %18 = icmp ne %struct.acpi_namespace_node* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %21 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %20, i32 0, i32 0
  %22 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %21, align 8
  %23 = icmp ne %struct.acpi_namespace_node* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* @AE_INFO, align 4
  %26 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %27 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %28 = ptrtoint %struct.acpi_namespace_node* %27 to i32
  %29 = call i32 @ACPI_ERROR(i32 %28)
  br label %30

30:                                               ; preds = %24, %19
  %31 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  store %struct.acpi_namespace_node* %31, %struct.acpi_namespace_node** %4, align 8
  %32 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %33 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %32, i32 0, i32 1
  %34 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %33, align 8
  store %struct.acpi_namespace_node* %34, %struct.acpi_namespace_node** %3, align 8
  %35 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %36 = call i32 @acpi_ns_delete_node(%struct.acpi_namespace_node* %35)
  br label %16

37:                                               ; preds = %16
  %38 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %39 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %38, i32 0, i32 0
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %39, align 8
  %40 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_namespace_node*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ns_delete_node(%struct.acpi_namespace_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
