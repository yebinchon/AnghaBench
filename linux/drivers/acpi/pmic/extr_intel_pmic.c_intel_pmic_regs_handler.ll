; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/pmic/extr_intel_pmic.c_intel_pmic_regs_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/pmic/extr_intel_pmic.c_intel_pmic_regs_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pmic_opregion = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@AE_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*, i8*, i8*)* @intel_pmic_regs_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pmic_regs_handler(i32 %0, i32 %1, i32 %2, i32* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.intel_pmic_opregion*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load i8*, i8** %13, align 8
  %17 = bitcast i8* %16 to %struct.intel_pmic_opregion*
  store %struct.intel_pmic_opregion* %17, %struct.intel_pmic_opregion** %14, align 8
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %92 [
    i32 0, label %19
    i32 1, label %21
    i32 2, label %32
    i32 3, label %42
    i32 4, label %50
  ]

19:                                               ; preds = %6
  %20 = load i32, i32* @AE_OK, align 4
  store i32 %20, i32* %7, align 4
  br label %106

21:                                               ; preds = %6
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 255
  %25 = shl i32 %24, 8
  %26 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %14, align 8
  %27 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %25
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @AE_OK, align 4
  store i32 %31, i32* %7, align 4
  br label %106

32:                                               ; preds = %6
  %33 = load i32*, i32** %11, align 8
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 255
  %36 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %14, align 8
  %37 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %35
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @AE_OK, align 4
  store i32 %41, i32* %7, align 4
  br label %106

42:                                               ; preds = %6
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 255
  %46 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %14, align 8
  %47 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @AE_OK, align 4
  store i32 %49, i32* %7, align 4
  br label %106

50:                                               ; preds = %6
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %14, align 8
  %56 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %14, align 8
  %59 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %14, align 8
  %63 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @regmap_write(i32 %57, i32 %61, i32 %65)
  store i32 %66, i32* %15, align 4
  br label %88

67:                                               ; preds = %50
  %68 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %14, align 8
  %69 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %14, align 8
  %72 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %14, align 8
  %76 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = call i32 @regmap_read(i32 %70, i32 %74, i32* %77)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %67
  %82 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %14, align 8
  %83 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %11, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %81, %67
  br label %88

88:                                               ; preds = %87, %54
  %89 = load %struct.intel_pmic_opregion*, %struct.intel_pmic_opregion** %14, align 8
  %90 = getelementptr inbounds %struct.intel_pmic_opregion, %struct.intel_pmic_opregion* %89, i32 0, i32 0
  %91 = call i32 @memset(%struct.TYPE_2__* %90, i32 0, i32 8)
  br label %92

92:                                               ; preds = %88, %6
  %93 = load i32, i32* %15, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %101, i32* %7, align 4
  br label %106

102:                                              ; preds = %95
  %103 = load i32, i32* @AE_ERROR, align 4
  store i32 %103, i32* %7, align 4
  br label %106

104:                                              ; preds = %92
  %105 = load i32, i32* @AE_OK, align 4
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %104, %102, %100, %42, %32, %21, %19
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
