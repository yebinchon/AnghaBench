; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-cpu-dyndiv.c_meson_clk_cpu_dyndiv_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-cpu-dyndiv.c_meson_clk_cpu_dyndiv_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_regmap = type { i32 }
%struct.meson_clk_cpu_dyndiv_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @meson_clk_cpu_dyndiv_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @meson_clk_cpu_dyndiv_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_regmap*, align 8
  %6 = alloca %struct.meson_clk_cpu_dyndiv_data*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw* %7)
  store %struct.clk_regmap* %8, %struct.clk_regmap** %5, align 8
  %9 = load %struct.clk_regmap*, %struct.clk_regmap** %5, align 8
  %10 = call %struct.meson_clk_cpu_dyndiv_data* @meson_clk_cpu_dyndiv_data(%struct.clk_regmap* %9)
  store %struct.meson_clk_cpu_dyndiv_data* %10, %struct.meson_clk_cpu_dyndiv_data** %6, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.clk_regmap*, %struct.clk_regmap** %5, align 8
  %14 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.meson_clk_cpu_dyndiv_data*, %struct.meson_clk_cpu_dyndiv_data** %6, align 8
  %17 = getelementptr inbounds %struct.meson_clk_cpu_dyndiv_data, %struct.meson_clk_cpu_dyndiv_data* %16, i32 0, i32 0
  %18 = call i32 @meson_parm_read(i32 %15, %struct.TYPE_2__* %17)
  %19 = load %struct.meson_clk_cpu_dyndiv_data*, %struct.meson_clk_cpu_dyndiv_data** %6, align 8
  %20 = getelementptr inbounds %struct.meson_clk_cpu_dyndiv_data, %struct.meson_clk_cpu_dyndiv_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @divider_recalc_rate(%struct.clk_hw* %11, i64 %12, i32 %18, i32* null, i32 0, i32 %22)
  ret i64 %23
}

declare dso_local %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw*) #1

declare dso_local %struct.meson_clk_cpu_dyndiv_data* @meson_clk_cpu_dyndiv_data(%struct.clk_regmap*) #1

declare dso_local i64 @divider_recalc_rate(%struct.clk_hw*, i64, i32, i32*, i32, i32) #1

declare dso_local i32 @meson_parm_read(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
