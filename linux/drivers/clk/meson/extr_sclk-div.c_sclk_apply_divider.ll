; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_sclk-div.c_sclk_apply_divider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_sclk-div.c_sclk_apply_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_regmap = type { i32 }
%struct.meson_sclk_div_data = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_regmap*, %struct.meson_sclk_div_data*)* @sclk_apply_divider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclk_apply_divider(%struct.clk_regmap* %0, %struct.meson_sclk_div_data* %1) #0 {
  %3 = alloca %struct.clk_regmap*, align 8
  %4 = alloca %struct.meson_sclk_div_data*, align 8
  store %struct.clk_regmap* %0, %struct.clk_regmap** %3, align 8
  store %struct.meson_sclk_div_data* %1, %struct.meson_sclk_div_data** %4, align 8
  %5 = load %struct.meson_sclk_div_data*, %struct.meson_sclk_div_data** %4, align 8
  %6 = getelementptr inbounds %struct.meson_sclk_div_data, %struct.meson_sclk_div_data* %5, i32 0, i32 2
  %7 = call i64 @MESON_PARM_APPLICABLE(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.clk_regmap*, %struct.clk_regmap** %3, align 8
  %11 = load %struct.meson_sclk_div_data*, %struct.meson_sclk_div_data** %4, align 8
  %12 = call i32 @sclk_apply_ratio(%struct.clk_regmap* %10, %struct.meson_sclk_div_data* %11)
  br label %13

13:                                               ; preds = %9, %2
  %14 = load %struct.clk_regmap*, %struct.clk_regmap** %3, align 8
  %15 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.meson_sclk_div_data*, %struct.meson_sclk_div_data** %4, align 8
  %18 = getelementptr inbounds %struct.meson_sclk_div_data, %struct.meson_sclk_div_data* %17, i32 0, i32 1
  %19 = load %struct.meson_sclk_div_data*, %struct.meson_sclk_div_data** %4, align 8
  %20 = getelementptr inbounds %struct.meson_sclk_div_data, %struct.meson_sclk_div_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %21, 1
  %23 = call i32 @meson_parm_write(i32 %16, i32* %18, i64 %22)
  ret void
}

declare dso_local i64 @MESON_PARM_APPLICABLE(i32*) #1

declare dso_local i32 @sclk_apply_ratio(%struct.clk_regmap*, %struct.meson_sclk_div_data*) #1

declare dso_local i32 @meson_parm_write(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
