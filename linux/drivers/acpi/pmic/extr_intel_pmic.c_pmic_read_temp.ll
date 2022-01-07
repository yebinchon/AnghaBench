; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/pmic/extr_intel_pmic.c_pmic_read_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/pmic/extr_intel_pmic.c_pmic_read_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pmic_opregion = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pmic_opregion*, i32, i32*)* @pmic_read_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_read_temp(%struct.intel_pmic_opregion* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_pmic_opregion*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_pmic_opregion* %0, %struct.intel_pmic_opregion** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %5, align 8
  %11 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (i32, i32)*, i32 (i32, i32)** %13, align 8
  %15 = icmp ne i32 (i32, i32)* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %55

19:                                               ; preds = %3
  %20 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %5, align 8
  %21 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (i32, i32)*, i32 (i32, i32)** %23, align 8
  %25 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %5, align 8
  %26 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 %24(i32 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %55

34:                                               ; preds = %19
  %35 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %5, align 8
  %36 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  store i32 0, i32* %4, align 4
  br label %55

42:                                               ; preds = %34
  %43 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %5, align 8
  %44 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @acpi_lpat_raw_to_temp(i32 %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %55

52:                                               ; preds = %42
  %53 = load i32, i32* %9, align 4
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %52, %50, %39, %32, %16
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @acpi_lpat_raw_to_temp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
