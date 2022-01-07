; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/pmic/extr_intel_pmic.c_pmic_thermal_pen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/pmic/extr_intel_pmic.c_pmic_thermal_pen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pmic_opregion = type { %struct.regmap*, %struct.intel_pmic_opregion_data* }
%struct.regmap = type { i32 }
%struct.intel_pmic_opregion_data = type { i32 (%struct.regmap*, i32, i32, i32*)*, i32 (%struct.regmap*, i32, i32, i32)* }

@ENXIO = common dso_local global i32 0, align 4
@ACPI_READ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pmic_opregion*, i32, i32, i64, i32*)* @pmic_thermal_pen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_thermal_pen(%struct.intel_pmic_opregion* %0, i32 %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_pmic_opregion*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.intel_pmic_opregion_data*, align 8
  %13 = alloca %struct.regmap*, align 8
  store %struct.intel_pmic_opregion* %0, %struct.intel_pmic_opregion** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %7, align 8
  %15 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %14, i32 0, i32 1
  %16 = load %struct.intel_pmic_opregion_data*, %struct.intel_pmic_opregion_data** %15, align 8
  store %struct.intel_pmic_opregion_data* %16, %struct.intel_pmic_opregion_data** %12, align 8
  %17 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %7, align 8
  %18 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %17, i32 0, i32 0
  %19 = load %struct.regmap*, %struct.regmap** %18, align 8
  store %struct.regmap* %19, %struct.regmap** %13, align 8
  %20 = load %struct.intel_pmic_opregion_data*, %struct.intel_pmic_opregion_data** %12, align 8
  %21 = getelementptr inbounds %struct.intel_pmic_opregion_data, %struct.intel_pmic_opregion_data* %20, i32 0, i32 0
  %22 = load i32 (%struct.regmap*, i32, i32, i32*)*, i32 (%struct.regmap*, i32, i32, i32*)** %21, align 8
  %23 = icmp ne i32 (%struct.regmap*, i32, i32, i32*)* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %5
  %25 = load %struct.intel_pmic_opregion_data*, %struct.intel_pmic_opregion_data** %12, align 8
  %26 = getelementptr inbounds %struct.intel_pmic_opregion_data, %struct.intel_pmic_opregion_data* %25, i32 0, i32 1
  %27 = load i32 (%struct.regmap*, i32, i32, i32)*, i32 (%struct.regmap*, i32, i32, i32)** %26, align 8
  %28 = icmp ne i32 (%struct.regmap*, i32, i32, i32)* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24, %5
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %66

32:                                               ; preds = %24
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @ACPI_READ, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load %struct.intel_pmic_opregion_data*, %struct.intel_pmic_opregion_data** %12, align 8
  %38 = getelementptr inbounds %struct.intel_pmic_opregion_data, %struct.intel_pmic_opregion_data* %37, i32 0, i32 0
  %39 = load i32 (%struct.regmap*, i32, i32, i32*)*, i32 (%struct.regmap*, i32, i32, i32*)** %38, align 8
  %40 = load %struct.regmap*, %struct.regmap** %13, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 %39(%struct.regmap* %40, i32 %41, i32 %42, i32* %43)
  store i32 %44, i32* %6, align 4
  br label %66

45:                                               ; preds = %32
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %66

56:                                               ; preds = %49, %45
  %57 = load %struct.intel_pmic_opregion_data*, %struct.intel_pmic_opregion_data** %12, align 8
  %58 = getelementptr inbounds %struct.intel_pmic_opregion_data, %struct.intel_pmic_opregion_data* %57, i32 0, i32 1
  %59 = load i32 (%struct.regmap*, i32, i32, i32)*, i32 (%struct.regmap*, i32, i32, i32)** %58, align 8
  %60 = load %struct.regmap*, %struct.regmap** %13, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 %59(%struct.regmap* %60, i32 %61, i32 %62, i32 %64)
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %56, %53, %36, %29
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
