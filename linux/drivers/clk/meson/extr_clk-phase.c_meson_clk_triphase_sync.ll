; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-phase.c_meson_clk_triphase_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-phase.c_meson_clk_triphase_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_regmap = type { i32 }
%struct.meson_clk_triphase_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @meson_clk_triphase_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_clk_triphase_sync(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_regmap*, align 8
  %4 = alloca %struct.meson_clk_triphase_data*, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw* %6)
  store %struct.clk_regmap* %7, %struct.clk_regmap** %3, align 8
  %8 = load %struct.clk_regmap*, %struct.clk_regmap** %3, align 8
  %9 = call %struct.meson_clk_triphase_data* @meson_clk_triphase_data(%struct.clk_regmap* %8)
  store %struct.meson_clk_triphase_data* %9, %struct.meson_clk_triphase_data** %4, align 8
  %10 = load %struct.clk_regmap*, %struct.clk_regmap** %3, align 8
  %11 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.meson_clk_triphase_data*, %struct.meson_clk_triphase_data** %4, align 8
  %14 = getelementptr inbounds %struct.meson_clk_triphase_data, %struct.meson_clk_triphase_data* %13, i32 0, i32 2
  %15 = call i32 @meson_parm_read(i32 %12, i32* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.clk_regmap*, %struct.clk_regmap** %3, align 8
  %17 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.meson_clk_triphase_data*, %struct.meson_clk_triphase_data** %4, align 8
  %20 = getelementptr inbounds %struct.meson_clk_triphase_data, %struct.meson_clk_triphase_data* %19, i32 0, i32 1
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @meson_parm_write(i32 %18, i32* %20, i32 %21)
  %23 = load %struct.clk_regmap*, %struct.clk_regmap** %3, align 8
  %24 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.meson_clk_triphase_data*, %struct.meson_clk_triphase_data** %4, align 8
  %27 = getelementptr inbounds %struct.meson_clk_triphase_data, %struct.meson_clk_triphase_data* %26, i32 0, i32 0
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @meson_parm_write(i32 %25, i32* %27, i32 %28)
  ret void
}

declare dso_local %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw*) #1

declare dso_local %struct.meson_clk_triphase_data* @meson_clk_triphase_data(%struct.clk_regmap*) #1

declare dso_local i32 @meson_parm_read(i32, i32*) #1

declare dso_local i32 @meson_parm_write(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
