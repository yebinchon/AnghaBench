; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-regmap.c_clk_regmap_gate_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-regmap.c_clk_regmap_gate_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_regmap = type { i32 }
%struct.clk_regmap_gate_data = type { i32, i32, i32 }

@CLK_GATE_SET_TO_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_regmap_gate_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_regmap_gate_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_regmap*, align 8
  %4 = alloca %struct.clk_regmap_gate_data*, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw* %6)
  store %struct.clk_regmap* %7, %struct.clk_regmap** %3, align 8
  %8 = load %struct.clk_regmap*, %struct.clk_regmap** %3, align 8
  %9 = call %struct.clk_regmap_gate_data* @clk_get_regmap_gate_data(%struct.clk_regmap* %8)
  store %struct.clk_regmap_gate_data* %9, %struct.clk_regmap_gate_data** %4, align 8
  %10 = load %struct.clk_regmap*, %struct.clk_regmap** %3, align 8
  %11 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.clk_regmap_gate_data*, %struct.clk_regmap_gate_data** %4, align 8
  %14 = getelementptr inbounds %struct.clk_regmap_gate_data, %struct.clk_regmap_gate_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @regmap_read(i32 %12, i32 %15, i32* %5)
  %17 = load %struct.clk_regmap_gate_data*, %struct.clk_regmap_gate_data** %4, align 8
  %18 = getelementptr inbounds %struct.clk_regmap_gate_data, %struct.clk_regmap_gate_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CLK_GATE_SET_TO_DISABLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.clk_regmap_gate_data*, %struct.clk_regmap_gate_data** %4, align 8
  %25 = getelementptr inbounds %struct.clk_regmap_gate_data, %struct.clk_regmap_gate_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = xor i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %23, %1
  %31 = load %struct.clk_regmap_gate_data*, %struct.clk_regmap_gate_data** %4, align 8
  %32 = getelementptr inbounds %struct.clk_regmap_gate_data, %struct.clk_regmap_gate_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @BIT(i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  ret i32 %40
}

declare dso_local %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw*) #1

declare dso_local %struct.clk_regmap_gate_data* @clk_get_regmap_gate_data(%struct.clk_regmap*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
