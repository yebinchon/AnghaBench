; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_sclk-div.c_sclk_div_get_duty_cycle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_sclk-div.c_sclk_div_get_duty_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_duty = type { i32, i32 }
%struct.clk_regmap = type { i32 }
%struct.meson_sclk_div_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_duty*)* @sclk_div_get_duty_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sclk_div_get_duty_cycle(%struct.clk_hw* %0, %struct.clk_duty* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.clk_duty*, align 8
  %6 = alloca %struct.clk_regmap*, align 8
  %7 = alloca %struct.meson_sclk_div_data*, align 8
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store %struct.clk_duty* %1, %struct.clk_duty** %5, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = call %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw* %9)
  store %struct.clk_regmap* %10, %struct.clk_regmap** %6, align 8
  %11 = load %struct.clk_regmap*, %struct.clk_regmap** %6, align 8
  %12 = call %struct.meson_sclk_div_data* @meson_sclk_div_data(%struct.clk_regmap* %11)
  store %struct.meson_sclk_div_data* %12, %struct.meson_sclk_div_data** %7, align 8
  %13 = load %struct.meson_sclk_div_data*, %struct.meson_sclk_div_data** %7, align 8
  %14 = getelementptr inbounds %struct.meson_sclk_div_data, %struct.meson_sclk_div_data* %13, i32 0, i32 1
  %15 = call i32 @MESON_PARM_APPLICABLE(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.clk_duty*, %struct.clk_duty** %5, align 8
  %19 = getelementptr inbounds %struct.clk_duty, %struct.clk_duty* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.clk_duty*, %struct.clk_duty** %5, align 8
  %21 = getelementptr inbounds %struct.clk_duty, %struct.clk_duty* %20, i32 0, i32 1
  store i32 2, i32* %21, align 4
  store i32 0, i32* %3, align 4
  br label %38

22:                                               ; preds = %2
  %23 = load %struct.clk_regmap*, %struct.clk_regmap** %6, align 8
  %24 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.meson_sclk_div_data*, %struct.meson_sclk_div_data** %7, align 8
  %27 = getelementptr inbounds %struct.meson_sclk_div_data, %struct.meson_sclk_div_data* %26, i32 0, i32 1
  %28 = call i32 @meson_parm_read(i32 %25, i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  %31 = load %struct.clk_duty*, %struct.clk_duty** %5, align 8
  %32 = getelementptr inbounds %struct.clk_duty, %struct.clk_duty* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.meson_sclk_div_data*, %struct.meson_sclk_div_data** %7, align 8
  %34 = getelementptr inbounds %struct.meson_sclk_div_data, %struct.meson_sclk_div_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.clk_duty*, %struct.clk_duty** %5, align 8
  %37 = getelementptr inbounds %struct.clk_duty, %struct.clk_duty* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %22, %17
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw*) #1

declare dso_local %struct.meson_sclk_div_data* @meson_sclk_div_data(%struct.clk_regmap*) #1

declare dso_local i32 @MESON_PARM_APPLICABLE(i32*) #1

declare dso_local i32 @meson_parm_read(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
