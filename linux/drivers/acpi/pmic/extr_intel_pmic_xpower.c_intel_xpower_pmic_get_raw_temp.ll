; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/pmic/extr_intel_pmic_xpower.c_intel_xpower_pmic_get_raw_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/pmic/extr_intel_pmic_xpower.c_intel_xpower_pmic_get_raw_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@AXP288_ADC_TS_PIN_CTRL = common dso_local global i32 0, align 4
@AXP288_ADC_TS_CURRENT_ON_OFF_MASK = common dso_local global i32 0, align 4
@AXP288_ADC_TS_CURRENT_ON_ONDEMAND = common dso_local global i32 0, align 4
@AXP288_GP_ADC_H = common dso_local global i32 0, align 4
@AXP288_ADC_TS_CURRENT_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i32)* @intel_xpower_pmic_get_raw_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_xpower_pmic_get_raw_temp(%struct.regmap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  store %struct.regmap* %0, %struct.regmap** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.regmap*, %struct.regmap** %4, align 8
  %10 = load i32, i32* @AXP288_ADC_TS_PIN_CTRL, align 4
  %11 = call i32 @regmap_read(%struct.regmap* %9, i32 %10, i32* %7)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %62

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @AXP288_ADC_TS_CURRENT_ON_OFF_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load %struct.regmap*, %struct.regmap** %4, align 8
  %23 = load i32, i32* @AXP288_ADC_TS_PIN_CTRL, align 4
  %24 = load i32, i32* @AXP288_ADC_TS_CURRENT_ON_OFF_MASK, align 4
  %25 = load i32, i32* @AXP288_ADC_TS_CURRENT_ON_ONDEMAND, align 4
  %26 = call i32 @regmap_update_bits(%struct.regmap* %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %62

31:                                               ; preds = %21
  %32 = call i32 @usleep_range(i32 6000, i32 10000)
  br label %33

33:                                               ; preds = %31, %16
  %34 = load %struct.regmap*, %struct.regmap** %4, align 8
  %35 = load i32, i32* @AXP288_GP_ADC_H, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %37 = call i32 @regmap_bulk_read(%struct.regmap* %34, i32 %35, i32* %36, i32 2)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 4
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 4
  %47 = and i32 %46, 15
  %48 = add nsw i32 %43, %47
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %40, %33
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @AXP288_ADC_TS_CURRENT_ON_OFF_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.regmap*, %struct.regmap** %4, align 8
  %56 = load i32, i32* @AXP288_ADC_TS_PIN_CTRL, align 4
  %57 = load i32, i32* @AXP288_ADC_TS_CURRENT_ON_OFF_MASK, align 4
  %58 = load i32, i32* @AXP288_ADC_TS_CURRENT_ON, align 4
  %59 = call i32 @regmap_update_bits(%struct.regmap* %55, i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %49
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %29, %14
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regmap_bulk_read(%struct.regmap*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
