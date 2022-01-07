; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_thermal.c_acpi_thermal_aml_dependency_fix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_thermal.c_acpi_thermal_aml_dependency_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_thermal = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"_CRT\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_HOT\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_PSV\00", align 1
@ACPI_THERMAL_MAX_ACTIVE = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"_TMP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_thermal*)* @acpi_thermal_aml_dependency_fix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_thermal_aml_dependency_fix(%struct.acpi_thermal* %0) #0 {
  %2 = alloca %struct.acpi_thermal*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [5 x i8], align 1
  %7 = alloca i64, align 8
  store %struct.acpi_thermal* %0, %struct.acpi_thermal** %2, align 8
  %8 = load %struct.acpi_thermal*, %struct.acpi_thermal** %2, align 8
  %9 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @acpi_evaluate_integer(i32 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %4)
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @acpi_evaluate_integer(i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, i64* %4)
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @acpi_evaluate_integer(i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* null, i64* %4)
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %40, %1
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @ACPI_THERMAL_MAX_ACTIVE, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  store i8 95, i8* %24, align 1
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 65, i8* %25, align 1
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 67, i8* %26, align 1
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 48, %28
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %27, align 1
  %31 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 0, i8* %31, align 1
  %32 = load i32, i32* %3, align 4
  %33 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %34 = call i64 @acpi_evaluate_integer(i32 %32, i8* %33, i32* null, i64* %4)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @AE_NOT_FOUND, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %23
  br label %43

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %19

43:                                               ; preds = %38, %19
  %44 = load i32, i32* %3, align 4
  %45 = call i64 @acpi_evaluate_integer(i32 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* null, i64* %4)
  ret void
}

declare dso_local i64 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
