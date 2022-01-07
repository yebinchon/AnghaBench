; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/pmic/extr_intel_pmic.c_intel_pmic_thermal_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/pmic/extr_intel_pmic.c_intel_pmic_thermal_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pmic_opregion = type { i32, %struct.intel_pmic_opregion_data* }
%struct.intel_pmic_opregion_data = type { i32, i32 }

@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*, i8*, i8*)* @intel_pmic_thermal_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pmic_thermal_handler(i32 %0, i32 %1, i32 %2, i32* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.intel_pmic_opregion*, align 8
  %15 = alloca %struct.intel_pmic_opregion_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = bitcast i8* %19 to %struct.intel_pmic_opregion*
  store %struct.intel_pmic_opregion* %20, %struct.intel_pmic_opregion** %14, align 8
  %21 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %14, align 8
  %22 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %21, i32 0, i32 1
  %23 = load %struct.intel_pmic_opregion_data*, %struct.intel_pmic_opregion_data** %22, align 8
  store %struct.intel_pmic_opregion_data* %23, %struct.intel_pmic_opregion_data** %15, align 8
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 32
  br i1 %25, label %29, label %26

26:                                               ; preds = %6
  %27 = load i32*, i32** %11, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26, %6
  %30 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %30, i32* %7, align 4
  br label %102

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.intel_pmic_opregion_data*, %struct.intel_pmic_opregion_data** %15, align 8
  %34 = getelementptr inbounds %struct.intel_pmic_opregion_data, %struct.intel_pmic_opregion_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.intel_pmic_opregion_data*, %struct.intel_pmic_opregion_data** %15, align 8
  %37 = getelementptr inbounds %struct.intel_pmic_opregion_data, %struct.intel_pmic_opregion_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pmic_get_reg_bit(i32 %32, i32 %35, i32 %38, i32* %16, i32* %17)
  store i32 %39, i32* %18, align 4
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %45, i32* %7, align 4
  br label %102

46:                                               ; preds = %31
  %47 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %14, align 8
  %48 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @pmic_thermal_is_temp(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %14, align 8
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @pmic_thermal_temp(%struct.intel_pmic_opregion* %54, i32 %55, i32 %56, i32* %57)
  store i32 %58, i32* %18, align 4
  br label %85

59:                                               ; preds = %46
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @pmic_thermal_is_aux(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %14, align 8
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @pmic_thermal_aux(%struct.intel_pmic_opregion* %64, i32 %65, i32 %66, i32* %67)
  store i32 %68, i32* %18, align 4
  br label %84

69:                                               ; preds = %59
  %70 = load i32, i32* %9, align 4
  %71 = call i64 @pmic_thermal_is_pen(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %14, align 8
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @pmic_thermal_pen(%struct.intel_pmic_opregion* %74, i32 %75, i32 %76, i32 %77, i32* %78)
  store i32 %79, i32* %18, align 4
  br label %83

80:                                               ; preds = %69
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %18, align 4
  br label %83

83:                                               ; preds = %80, %73
  br label %84

84:                                               ; preds = %83, %63
  br label %85

85:                                               ; preds = %84, %53
  %86 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %14, align 8
  %87 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i32, i32* %18, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %85
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %97, i32* %7, align 4
  br label %102

98:                                               ; preds = %91
  %99 = load i32, i32* @AE_ERROR, align 4
  store i32 %99, i32* %7, align 4
  br label %102

100:                                              ; preds = %85
  %101 = load i32, i32* @AE_OK, align 4
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %100, %98, %96, %44, %29
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32 @pmic_get_reg_bit(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @pmic_thermal_is_temp(i32) #1

declare dso_local i32 @pmic_thermal_temp(%struct.intel_pmic_opregion*, i32, i32, i32*) #1

declare dso_local i64 @pmic_thermal_is_aux(i32) #1

declare dso_local i32 @pmic_thermal_aux(%struct.intel_pmic_opregion*, i32, i32, i32*) #1

declare dso_local i64 @pmic_thermal_is_pen(i32) #1

declare dso_local i32 @pmic_thermal_pen(%struct.intel_pmic_opregion*, i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
