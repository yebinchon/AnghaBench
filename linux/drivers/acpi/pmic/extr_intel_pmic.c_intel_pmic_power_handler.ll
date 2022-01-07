; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/pmic/extr_intel_pmic.c_intel_pmic_power_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/pmic/extr_intel_pmic.c_intel_pmic_power_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pmic_opregion = type { i32, %struct.intel_pmic_opregion_data*, %struct.regmap* }
%struct.intel_pmic_opregion_data = type { i32 (%struct.regmap*, i32, i32, i32*)*, i32 (%struct.regmap*, i32, i32, i32)*, i32, i32 }
%struct.regmap = type { i32 }

@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_WRITE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ACPI_READ = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*, i8*, i8*)* @intel_pmic_power_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pmic_power_handler(i32 %0, i32 %1, i32 %2, i32* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.intel_pmic_opregion*, align 8
  %15 = alloca %struct.regmap*, align 8
  %16 = alloca %struct.intel_pmic_opregion_data*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = bitcast i8* %20 to %struct.intel_pmic_opregion*
  store %struct.intel_pmic_opregion* %21, %struct.intel_pmic_opregion** %14, align 8
  %22 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %14, align 8
  %23 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %22, i32 0, i32 2
  %24 = load %struct.regmap*, %struct.regmap** %23, align 8
  store %struct.regmap* %24, %struct.regmap** %15, align 8
  %25 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %14, align 8
  %26 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %25, i32 0, i32 1
  %27 = load %struct.intel_pmic_opregion_data*, %struct.intel_pmic_opregion_data** %26, align 8
  store %struct.intel_pmic_opregion_data* %27, %struct.intel_pmic_opregion_data** %16, align 8
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 32
  br i1 %29, label %33, label %30

30:                                               ; preds = %6
  %31 = load i32*, i32** %11, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30, %6
  %34 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %34, i32* %7, align 4
  br label %105

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @ACPI_WRITE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %48, i32* %7, align 4
  br label %105

49:                                               ; preds = %43, %39, %35
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.intel_pmic_opregion_data*, %struct.intel_pmic_opregion_data** %16, align 8
  %52 = getelementptr inbounds %struct.intel_pmic_opregion_data, %struct.intel_pmic_opregion_data* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.intel_pmic_opregion_data*, %struct.intel_pmic_opregion_data** %16, align 8
  %55 = getelementptr inbounds %struct.intel_pmic_opregion_data, %struct.intel_pmic_opregion_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @pmic_get_reg_bit(i32 %50, i32 %53, i32 %56, i32* %17, i32* %18)
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* @ENOENT, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %49
  %63 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %63, i32* %7, align 4
  br label %105

64:                                               ; preds = %49
  %65 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %14, align 8
  %66 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %65, i32 0, i32 0
  %67 = call i32 @mutex_lock(i32* %66)
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @ACPI_READ, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = load %struct.intel_pmic_opregion_data*, %struct.intel_pmic_opregion_data** %16, align 8
  %73 = getelementptr inbounds %struct.intel_pmic_opregion_data, %struct.intel_pmic_opregion_data* %72, i32 0, i32 0
  %74 = load i32 (%struct.regmap*, i32, i32, i32*)*, i32 (%struct.regmap*, i32, i32, i32*)** %73, align 8
  %75 = load %struct.regmap*, %struct.regmap** %15, align 8
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %18, align 4
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 %74(%struct.regmap* %75, i32 %76, i32 %77, i32* %78)
  br label %92

80:                                               ; preds = %64
  %81 = load %struct.intel_pmic_opregion_data*, %struct.intel_pmic_opregion_data** %16, align 8
  %82 = getelementptr inbounds %struct.intel_pmic_opregion_data, %struct.intel_pmic_opregion_data* %81, i32 0, i32 1
  %83 = load i32 (%struct.regmap*, i32, i32, i32)*, i32 (%struct.regmap*, i32, i32, i32)** %82, align 8
  %84 = load %struct.regmap*, %struct.regmap** %15, align 8
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %18, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 1
  %90 = zext i1 %89 to i32
  %91 = call i32 %83(%struct.regmap* %84, i32 %85, i32 %86, i32 %90)
  br label %92

92:                                               ; preds = %80, %71
  %93 = phi i32 [ %79, %71 ], [ %91, %80 ]
  store i32 %93, i32* %19, align 4
  %94 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %14, align 8
  %95 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %94, i32 0, i32 0
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i32, i32* %19, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i32, i32* @AE_ERROR, align 4
  br label %103

101:                                              ; preds = %92
  %102 = load i32, i32* @AE_OK, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %103, %62, %47, %33
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local i32 @pmic_get_reg_bit(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
