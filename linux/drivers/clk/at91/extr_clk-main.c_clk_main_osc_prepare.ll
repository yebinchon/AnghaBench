; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-main.c_clk_main_osc_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-main.c_clk_main_osc_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_main_osc = type { %struct.regmap* }
%struct.regmap = type { i32 }

@AT91_CKGR_MOR = common dso_local global i32 0, align 4
@MOR_KEY_MASK = common dso_local global i32 0, align 4
@AT91_PMC_OSCBYPASS = common dso_local global i32 0, align 4
@AT91_PMC_MOSCEN = common dso_local global i32 0, align 4
@AT91_PMC_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_main_osc_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_main_osc_prepare(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_main_osc*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.clk_main_osc* @to_clk_main_osc(%struct.clk_hw* %7)
  store %struct.clk_main_osc* %8, %struct.clk_main_osc** %4, align 8
  %9 = load %struct.clk_main_osc*, %struct.clk_main_osc** %4, align 8
  %10 = getelementptr inbounds %struct.clk_main_osc, %struct.clk_main_osc* %9, i32 0, i32 0
  %11 = load %struct.regmap*, %struct.regmap** %10, align 8
  store %struct.regmap* %11, %struct.regmap** %5, align 8
  %12 = load %struct.regmap*, %struct.regmap** %5, align 8
  %13 = load i32, i32* @AT91_CKGR_MOR, align 4
  %14 = call i32 @regmap_read(%struct.regmap* %12, i32 %13, i32* %6)
  %15 = load i32, i32* @MOR_KEY_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @AT91_PMC_OSCBYPASS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @AT91_PMC_MOSCEN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @AT91_PMC_MOSCEN, align 4
  %31 = load i32, i32* @AT91_PMC_KEY, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.regmap*, %struct.regmap** %5, align 8
  %36 = load i32, i32* @AT91_CKGR_MOR, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @regmap_write(%struct.regmap* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %29, %24
  br label %40

40:                                               ; preds = %45, %39
  %41 = load %struct.regmap*, %struct.regmap** %5, align 8
  %42 = call i32 @clk_main_osc_ready(%struct.regmap* %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 (...) @cpu_relax()
  br label %40

47:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %23
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.clk_main_osc* @to_clk_main_osc(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @clk_main_osc_ready(%struct.regmap*) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
