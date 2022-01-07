; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utmath.c_acpi_ut_short_divide.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utmath.c_acpi_ut_short_divide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.uint64_overlay = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ut_short_divide = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Divide by zero\00", align 1
@AE_AML_DIVIDE_BY_ZERO = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ut_short_divide(i32 %0, i64 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %union.uint64_overlay, align 4
  %11 = alloca %union.uint64_overlay, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i32, i32* @ut_short_divide, align 4
  %14 = call i32 @ACPI_FUNCTION_TRACE(i32 %13)
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i32, i32* @AE_INFO, align 4
  %19 = call i32 @ACPI_ERROR(i32 ptrtoint ([15 x i8]* @.str to i32))
  %20 = load i32, i32* @AE_AML_DIVIDE_BY_ZERO, align 4
  %21 = call i32 @return_ACPI_STATUS(i32 %20)
  br label %22

22:                                               ; preds = %17, %4
  %23 = load i32, i32* %6, align 4
  %24 = bitcast %union.uint64_overlay* %10 to i32*
  store i32 %23, i32* %24, align 4
  %25 = bitcast %union.uint64_overlay* %10 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %7, align 8
  %29 = bitcast %union.uint64_overlay* %11 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @ACPI_DIV_64_BY_32(i64 0, i32 %27, i64 %28, i32 %31, i64 %32)
  %34 = load i64, i64* %12, align 8
  %35 = bitcast %union.uint64_overlay* %10 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %7, align 8
  %39 = bitcast %union.uint64_overlay* %11 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @ACPI_DIV_64_BY_32(i64 %34, i32 %37, i64 %38, i32 %41, i64 %42)
  %44 = load i32*, i32** %8, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %22
  %47 = bitcast %union.uint64_overlay* %11 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %8, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %22
  %51 = load i64*, i64** %9, align 8
  %52 = icmp ne i64* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i64, i64* %12, align 8
  %55 = load i64*, i64** %9, align 8
  store i64 %54, i64* %55, align 8
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* @AE_OK, align 4
  %58 = call i32 @return_ACPI_STATUS(i32 %57)
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_DIV_64_BY_32(i64, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
