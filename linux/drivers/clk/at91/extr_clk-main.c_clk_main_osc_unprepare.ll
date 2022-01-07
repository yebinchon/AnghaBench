; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-main.c_clk_main_osc_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-main.c_clk_main_osc_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_main_osc = type { %struct.regmap* }
%struct.regmap = type { i32 }

@AT91_CKGR_MOR = common dso_local global i32 0, align 4
@AT91_PMC_OSCBYPASS = common dso_local global i32 0, align 4
@AT91_PMC_MOSCEN = common dso_local global i32 0, align 4
@AT91_PMC_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @clk_main_osc_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_main_osc_unprepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_main_osc*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.clk_main_osc* @to_clk_main_osc(%struct.clk_hw* %6)
  store %struct.clk_main_osc* %7, %struct.clk_main_osc** %3, align 8
  %8 = load %struct.clk_main_osc*, %struct.clk_main_osc** %3, align 8
  %9 = getelementptr inbounds %struct.clk_main_osc, %struct.clk_main_osc* %8, i32 0, i32 0
  %10 = load %struct.regmap*, %struct.regmap** %9, align 8
  store %struct.regmap* %10, %struct.regmap** %4, align 8
  %11 = load %struct.regmap*, %struct.regmap** %4, align 8
  %12 = load i32, i32* @AT91_CKGR_MOR, align 4
  %13 = call i32 @regmap_read(%struct.regmap* %11, i32 %12, i32* %5)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @AT91_PMC_OSCBYPASS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %38

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @AT91_PMC_MOSCEN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %38

25:                                               ; preds = %19
  %26 = load i32, i32* @AT91_PMC_KEY, align 4
  %27 = load i32, i32* @AT91_PMC_MOSCEN, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.regmap*, %struct.regmap** %4, align 8
  %33 = load i32, i32* @AT91_CKGR_MOR, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @AT91_PMC_KEY, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @regmap_write(%struct.regmap* %32, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %25, %24, %18
  ret void
}

declare dso_local %struct.clk_main_osc* @to_clk_main_osc(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
