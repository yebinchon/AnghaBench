; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-max77686.c_max77686_clk_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-max77686.c_max77686_clk_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.max77686_clk_init_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @max77686_clk_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max77686_clk_unprepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.max77686_clk_init_data*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %4 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %5 = call %struct.max77686_clk_init_data* @to_max77686_clk_init_data(%struct.clk_hw* %4)
  store %struct.max77686_clk_init_data* %5, %struct.max77686_clk_init_data** %3, align 8
  %6 = load %struct.max77686_clk_init_data*, %struct.max77686_clk_init_data** %3, align 8
  %7 = getelementptr inbounds %struct.max77686_clk_init_data, %struct.max77686_clk_init_data* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.max77686_clk_init_data*, %struct.max77686_clk_init_data** %3, align 8
  %10 = getelementptr inbounds %struct.max77686_clk_init_data, %struct.max77686_clk_init_data* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.max77686_clk_init_data*, %struct.max77686_clk_init_data** %3, align 8
  %15 = getelementptr inbounds %struct.max77686_clk_init_data, %struct.max77686_clk_init_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.max77686_clk_init_data*, %struct.max77686_clk_init_data** %3, align 8
  %20 = getelementptr inbounds %struct.max77686_clk_init_data, %struct.max77686_clk_init_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = xor i32 %23, -1
  %25 = call i32 @regmap_update_bits(i32 %8, i32 %13, i32 %18, i32 %24)
  ret void
}

declare dso_local %struct.max77686_clk_init_data* @to_max77686_clk_init_data(%struct.clk_hw*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
