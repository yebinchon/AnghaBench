; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-main.c_clk_main_osc_is_prepared.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-main.c_clk_main_osc_is_prepared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_main_osc = type { %struct.regmap* }
%struct.regmap = type { i32 }

@AT91_CKGR_MOR = common dso_local global i32 0, align 4
@AT91_PMC_OSCBYPASS = common dso_local global i32 0, align 4
@AT91_PMC_SR = common dso_local global i32 0, align 4
@AT91_PMC_MOSCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_main_osc_is_prepared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_main_osc_is_prepared(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_main_osc*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.clk_main_osc* @to_clk_main_osc(%struct.clk_hw* %8)
  store %struct.clk_main_osc* %9, %struct.clk_main_osc** %4, align 8
  %10 = load %struct.clk_main_osc*, %struct.clk_main_osc** %4, align 8
  %11 = getelementptr inbounds %struct.clk_main_osc, %struct.clk_main_osc* %10, i32 0, i32 0
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %5, align 8
  %13 = load %struct.regmap*, %struct.regmap** %5, align 8
  %14 = load i32, i32* @AT91_CKGR_MOR, align 4
  %15 = call i32 @regmap_read(%struct.regmap* %13, i32 %14, i32* %6)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @AT91_PMC_OSCBYPASS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %36

21:                                               ; preds = %1
  %22 = load %struct.regmap*, %struct.regmap** %5, align 8
  %23 = load i32, i32* @AT91_PMC_SR, align 4
  %24 = call i32 @regmap_read(%struct.regmap* %22, i32 %23, i32* %7)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @AT91_PMC_MOSCS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @clk_main_parent_select(i32 %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %29, %21
  %34 = phi i1 [ false, %21 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %20
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.clk_main_osc* @to_clk_main_osc(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i64 @clk_main_parent_select(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
