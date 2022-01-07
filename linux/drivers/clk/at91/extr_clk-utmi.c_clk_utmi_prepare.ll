; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-utmi.c_clk_utmi_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-utmi.c_clk_utmi_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_utmi = type { i64, i64 }

@AT91_PMC_UPLLEN = common dso_local global i32 0, align 4
@AT91_PMC_UPLLCOUNT = common dso_local global i32 0, align 4
@AT91_PMC_BIASEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"UTMICK: unsupported mainck rate\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AT91_SFR_UTMICKTRIM = common dso_local global i32 0, align 4
@AT91_UTMICKTRIM_FREQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"UTMICK: sfr node required\0A\00", align 1
@AT91_CKGR_UCKR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_utmi_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_utmi_prepare(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.clk_utmi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call %struct.clk_utmi* @to_clk_utmi(%struct.clk_hw* %9)
  store %struct.clk_utmi* %10, %struct.clk_utmi** %5, align 8
  %11 = load i32, i32* @AT91_PMC_UPLLEN, align 4
  %12 = load i32, i32* @AT91_PMC_UPLLCOUNT, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @AT91_PMC_BIASEN, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %17 = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* %16)
  store %struct.clk_hw* %17, %struct.clk_hw** %4, align 8
  %18 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %19 = call i64 @clk_hw_get_rate(%struct.clk_hw* %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  switch i64 %20, label %25 [
    i64 12000000, label %21
    i64 16000000, label %22
    i64 24000000, label %23
    i64 48000000, label %24
  ]

21:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %29

22:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %29

23:                                               ; preds = %1
  store i32 2, i32* %7, align 4
  br label %29

24:                                               ; preds = %1
  store i32 3, i32* %7, align 4
  br label %29

25:                                               ; preds = %1
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %68

29:                                               ; preds = %24, %23, %22, %21
  %30 = load %struct.clk_utmi*, %struct.clk_utmi** %5, align 8
  %31 = getelementptr inbounds %struct.clk_utmi, %struct.clk_utmi* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.clk_utmi*, %struct.clk_utmi** %5, align 8
  %36 = getelementptr inbounds %struct.clk_utmi, %struct.clk_utmi* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @AT91_SFR_UTMICKTRIM, align 4
  %39 = load i32, i32* @AT91_UTMICKTRIM_FREQ, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @regmap_update_bits(i64 %37, i32 %38, i32 %39, i32 %40)
  br label %50

42:                                               ; preds = %29
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %68

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %34
  %51 = load %struct.clk_utmi*, %struct.clk_utmi** %5, align 8
  %52 = getelementptr inbounds %struct.clk_utmi, %struct.clk_utmi* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @AT91_CKGR_UCKR, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @regmap_update_bits(i64 %53, i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %65, %50
  %59 = load %struct.clk_utmi*, %struct.clk_utmi** %5, align 8
  %60 = getelementptr inbounds %struct.clk_utmi, %struct.clk_utmi* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @clk_utmi_ready(i64 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = call i32 (...) @cpu_relax()
  br label %58

67:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %45, %25
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.clk_utmi* @to_clk_utmi(%struct.clk_hw*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw*) #1

declare dso_local i64 @clk_hw_get_rate(%struct.clk_hw*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @regmap_update_bits(i64, i32, i32, i32) #1

declare dso_local i32 @clk_utmi_ready(i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
