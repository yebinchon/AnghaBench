; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsxfobj.c_acpi_get_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsxfobj.c_acpi_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }

@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_ROOT_OBJECT = common dso_local global i64 0, align 8
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@ACPI_MTX_NAMESPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_get_type(i64 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.acpi_namespace_node*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %11, i32* %3, align 4
  br label %45

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @ACPI_ROOT_OBJECT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @AE_OK, align 4
  store i32 %19, i32* %3, align 4
  br label %45

20:                                               ; preds = %12
  %21 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %22 = call i32 @acpi_ut_acquire_mutex(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @ACPI_FAILURE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %45

28:                                               ; preds = %20
  %29 = load i64, i64* %4, align 8
  %30 = call %struct.acpi_namespace_node* @acpi_ns_validate_handle(i64 %29)
  store %struct.acpi_namespace_node* %30, %struct.acpi_namespace_node** %6, align 8
  %31 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %32 = icmp ne %struct.acpi_namespace_node* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %35 = call i32 @acpi_ut_release_mutex(i32 %34)
  %36 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %36, i32* %3, align 4
  br label %45

37:                                               ; preds = %28
  %38 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %39 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %43 = call i32 @acpi_ut_release_mutex(i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %37, %33, %26, %16, %10
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @acpi_ut_acquire_mutex(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local %struct.acpi_namespace_node* @acpi_ns_validate_handle(i64) #1

declare dso_local i32 @acpi_ut_release_mutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
