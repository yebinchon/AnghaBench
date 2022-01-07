; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-regmap.c_clk_regmap_gate_endisable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-regmap.c_clk_regmap_gate_endisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_regmap = type { i32 }
%struct.clk_regmap_gate_data = type { i32, i32, i32 }

@CLK_GATE_SET_TO_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @clk_regmap_gate_endisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_regmap_gate_endisable(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_regmap*, align 8
  %6 = alloca %struct.clk_regmap_gate_data*, align 8
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw* %8)
  store %struct.clk_regmap* %9, %struct.clk_regmap** %5, align 8
  %10 = load %struct.clk_regmap*, %struct.clk_regmap** %5, align 8
  %11 = call %struct.clk_regmap_gate_data* @clk_get_regmap_gate_data(%struct.clk_regmap* %10)
  store %struct.clk_regmap_gate_data* %11, %struct.clk_regmap_gate_data** %6, align 8
  %12 = load %struct.clk_regmap_gate_data*, %struct.clk_regmap_gate_data** %6, align 8
  %13 = getelementptr inbounds %struct.clk_regmap_gate_data, %struct.clk_regmap_gate_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CLK_GATE_SET_TO_DISABLE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %7, align 4
  %22 = xor i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load %struct.clk_regmap*, %struct.clk_regmap** %5, align 8
  %24 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.clk_regmap_gate_data*, %struct.clk_regmap_gate_data** %6, align 8
  %27 = getelementptr inbounds %struct.clk_regmap_gate_data, %struct.clk_regmap_gate_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.clk_regmap_gate_data*, %struct.clk_regmap_gate_data** %6, align 8
  %30 = getelementptr inbounds %struct.clk_regmap_gate_data, %struct.clk_regmap_gate_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  %36 = load %struct.clk_regmap_gate_data*, %struct.clk_regmap_gate_data** %6, align 8
  %37 = getelementptr inbounds %struct.clk_regmap_gate_data, %struct.clk_regmap_gate_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @BIT(i32 %38)
  br label %41

40:                                               ; preds = %2
  br label %41

41:                                               ; preds = %40, %35
  %42 = phi i32 [ %39, %35 ], [ 0, %40 ]
  %43 = call i32 @regmap_update_bits(i32 %25, i32 %28, i32 %32, i32 %42)
  ret i32 %43
}

declare dso_local %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw*) #1

declare dso_local %struct.clk_regmap_gate_data* @clk_get_regmap_gate_data(%struct.clk_regmap*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
