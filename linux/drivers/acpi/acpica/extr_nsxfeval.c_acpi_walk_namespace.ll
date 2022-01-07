; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsxfeval.c_acpi_walk_namespace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsxfeval.c_acpi_walk_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_TYPE_LOCAL_MAX = common dso_local global i64 0, align 8
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@acpi_gbl_namespace_rw_lock = common dso_local global i32 0, align 4
@ACPI_MTX_NAMESPACE = common dso_local global i32 0, align 4
@ACPI_NS_WALK_UNLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_walk_namespace(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  store i64 %0, i64* %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i8** %6, i8*** %15, align 8
  %17 = call i32 @ACPI_FUNCTION_TRACE(i32 (i64, i32, i32, i32, i32, i8*, i8**)* @acpi_walk_namespace)
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @ACPI_TYPE_LOCAL_MAX, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %30, label %21

21:                                               ; preds = %7
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27, %21, %7
  %31 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %32 = call i32 @return_ACPI_STATUS(i32 %31)
  br label %33

33:                                               ; preds = %30, %27, %24
  %34 = call i32 @acpi_ut_acquire_read_lock(i32* @acpi_gbl_namespace_rw_lock)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = call i64 @ACPI_FAILURE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %16, align 4
  %40 = call i32 @return_ACPI_STATUS(i32 %39)
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %43 = call i32 @acpi_ut_acquire_mutex(i32 %42)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = call i64 @ACPI_FAILURE(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %67

48:                                               ; preds = %41
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @acpi_ns_validate_handle(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %53, i32* %16, align 4
  br label %64

54:                                               ; preds = %48
  %55 = load i64, i64* %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @ACPI_NS_WALK_UNLOCK, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i8*, i8** %14, align 8
  %62 = load i8**, i8*** %15, align 8
  %63 = call i32 @acpi_ns_walk_namespace(i64 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i8* %61, i8** %62)
  store i32 %63, i32* %16, align 4
  br label %64

64:                                               ; preds = %54, %52
  %65 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %66 = call i32 @acpi_ut_release_mutex(i32 %65)
  br label %67

67:                                               ; preds = %64, %47
  %68 = call i32 @acpi_ut_release_read_lock(i32* @acpi_gbl_namespace_rw_lock)
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @return_ACPI_STATUS(i32 %69)
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32 (i64, i32, i32, i32, i32, i8*, i8**)*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ut_acquire_read_lock(i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ut_acquire_mutex(i32) #1

declare dso_local i32 @acpi_ns_validate_handle(i32) #1

declare dso_local i32 @acpi_ns_walk_namespace(i64, i32, i32, i32, i32, i32, i8*, i8**) #1

declare dso_local i32 @acpi_ut_release_mutex(i32) #1

declare dso_local i32 @acpi_ut_release_read_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
