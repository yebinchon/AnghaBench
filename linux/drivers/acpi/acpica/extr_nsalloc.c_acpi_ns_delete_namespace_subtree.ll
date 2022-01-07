; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsalloc.c_acpi_ns_delete_namespace_subtree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsalloc.c_acpi_ns_delete_namespace_subtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { %struct.acpi_namespace_node*, i64 }

@ns_delete_namespace_subtree = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4
@ACPI_MTX_NAMESPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ns_delete_namespace_subtree(%struct.acpi_namespace_node* %0) #0 {
  %2 = alloca %struct.acpi_namespace_node*, align 8
  %3 = alloca %struct.acpi_namespace_node*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %2, align 8
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %3, align 8
  store i64 1, i64* %4, align 8
  %6 = load i32, i32* @ns_delete_namespace_subtree, align 4
  %7 = call i32 @ACPI_FUNCTION_TRACE(i32 %6)
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %9 = icmp ne %struct.acpi_namespace_node* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @return_VOID, align 4
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %14 = call i32 @acpi_ut_acquire_mutex(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @ACPI_FAILURE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @return_VOID, align 4
  br label %20

20:                                               ; preds = %18, %12
  br label %21

21:                                               ; preds = %51, %20
  %22 = load i64, i64* %4, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %21
  %25 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %26 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %27 = call %struct.acpi_namespace_node* @acpi_ns_get_next_node(%struct.acpi_namespace_node* %25, %struct.acpi_namespace_node* %26)
  store %struct.acpi_namespace_node* %27, %struct.acpi_namespace_node** %3, align 8
  %28 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %29 = icmp ne %struct.acpi_namespace_node* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %32 = call i32 @acpi_ns_detach_object(%struct.acpi_namespace_node* %31)
  %33 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %34 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i64, i64* %4, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %4, align 8
  %40 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  store %struct.acpi_namespace_node* %40, %struct.acpi_namespace_node** %2, align 8
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %3, align 8
  br label %41

41:                                               ; preds = %37, %30
  br label %51

42:                                               ; preds = %24
  %43 = load i64, i64* %4, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %4, align 8
  %45 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %46 = call i32 @acpi_ns_delete_children(%struct.acpi_namespace_node* %45)
  %47 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  store %struct.acpi_namespace_node* %47, %struct.acpi_namespace_node** %3, align 8
  %48 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %49 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %48, i32 0, i32 0
  %50 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %49, align 8
  store %struct.acpi_namespace_node* %50, %struct.acpi_namespace_node** %2, align 8
  br label %51

51:                                               ; preds = %42, %41
  br label %21

52:                                               ; preds = %21
  %53 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %54 = call i32 @acpi_ut_release_mutex(i32 %53)
  %55 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ut_acquire_mutex(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local %struct.acpi_namespace_node* @acpi_ns_get_next_node(%struct.acpi_namespace_node*, %struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ns_detach_object(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ns_delete_children(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ut_release_mutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
