; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/pmic/extr_intel_pmic.c_pmic_thermal_aux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/pmic/extr_intel_pmic.c_pmic_thermal_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pmic_opregion = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (i32, i32, i32)* }

@ACPI_READ = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pmic_opregion*, i32, i64, i32*)* @pmic_thermal_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_thermal_aux(%struct.intel_pmic_opregion* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_pmic_opregion*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.intel_pmic_opregion* %0, %struct.intel_pmic_opregion** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* @ACPI_READ, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @pmic_read_temp(%struct.intel_pmic_opregion* %15, i32 %16, i32* %17)
  store i32 %18, i32* %5, align 4
  br label %61

19:                                               ; preds = %4
  %20 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %6, align 8
  %21 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %23, align 8
  %25 = icmp ne i32 (i32, i32, i32)* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENXIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %61

29:                                               ; preds = %19
  %30 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %6, align 8
  %31 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %6, align 8
  %36 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @acpi_lpat_temp_to_raw(i64 %37, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %5, align 4
  br label %61

45:                                               ; preds = %34
  br label %49

46:                                               ; preds = %29
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %46, %45
  %50 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %6, align 8
  %51 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %53, align 8
  %55 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %6, align 8
  %56 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 %54(i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %49, %43, %26, %14
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @pmic_read_temp(%struct.intel_pmic_opregion*, i32, i32*) #1

declare dso_local i32 @acpi_lpat_temp_to_raw(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
