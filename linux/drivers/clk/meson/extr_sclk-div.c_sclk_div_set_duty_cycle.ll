; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_sclk-div.c_sclk_div_set_duty_cycle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_sclk-div.c_sclk_div_set_duty_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_duty = type { i32 }
%struct.clk_regmap = type { i32 }
%struct.meson_sclk_div_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_duty*)* @sclk_div_set_duty_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sclk_div_set_duty_cycle(%struct.clk_hw* %0, %struct.clk_duty* %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_duty*, align 8
  %5 = alloca %struct.clk_regmap*, align 8
  %6 = alloca %struct.meson_sclk_div_data*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store %struct.clk_duty* %1, %struct.clk_duty** %4, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw* %7)
  store %struct.clk_regmap* %8, %struct.clk_regmap** %5, align 8
  %9 = load %struct.clk_regmap*, %struct.clk_regmap** %5, align 8
  %10 = call %struct.meson_sclk_div_data* @meson_sclk_div_data(%struct.clk_regmap* %9)
  store %struct.meson_sclk_div_data* %10, %struct.meson_sclk_div_data** %6, align 8
  %11 = load %struct.meson_sclk_div_data*, %struct.meson_sclk_div_data** %6, align 8
  %12 = getelementptr inbounds %struct.meson_sclk_div_data, %struct.meson_sclk_div_data* %11, i32 0, i32 1
  %13 = call i64 @MESON_PARM_APPLICABLE(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.meson_sclk_div_data*, %struct.meson_sclk_div_data** %6, align 8
  %17 = getelementptr inbounds %struct.meson_sclk_div_data, %struct.meson_sclk_div_data* %16, i32 0, i32 0
  %18 = load %struct.clk_duty*, %struct.clk_duty** %4, align 8
  %19 = call i32 @memcpy(i32* %17, %struct.clk_duty* %18, i32 4)
  %20 = load %struct.clk_regmap*, %struct.clk_regmap** %5, align 8
  %21 = load %struct.meson_sclk_div_data*, %struct.meson_sclk_div_data** %6, align 8
  %22 = call i32 @sclk_apply_ratio(%struct.clk_regmap* %20, %struct.meson_sclk_div_data* %21)
  br label %23

23:                                               ; preds = %15, %2
  ret i32 0
}

declare dso_local %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw*) #1

declare dso_local %struct.meson_sclk_div_data* @meson_sclk_div_data(%struct.clk_regmap*) #1

declare dso_local i64 @MESON_PARM_APPLICABLE(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.clk_duty*, i32) #1

declare dso_local i32 @sclk_apply_ratio(%struct.clk_regmap*, %struct.meson_sclk_div_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
