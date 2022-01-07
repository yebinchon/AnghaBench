; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-core.c_sosc_clk_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-core.c_sosc_clk_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.pic32_sec_osc = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @sosc_clk_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sosc_clk_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.pic32_sec_osc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.pic32_sec_osc* @clkhw_to_sosc(%struct.clk_hw* %6)
  store %struct.pic32_sec_osc* %7, %struct.pic32_sec_osc** %3, align 8
  %8 = load %struct.pic32_sec_osc*, %struct.pic32_sec_osc** %3, align 8
  %9 = getelementptr inbounds %struct.pic32_sec_osc, %struct.pic32_sec_osc* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @readl(i32 %10)
  %12 = load %struct.pic32_sec_osc*, %struct.pic32_sec_osc** %3, align 8
  %13 = getelementptr inbounds %struct.pic32_sec_osc, %struct.pic32_sec_osc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %11, %14
  store i32 %15, i32* %4, align 4
  %16 = load %struct.pic32_sec_osc*, %struct.pic32_sec_osc** %3, align 8
  %17 = getelementptr inbounds %struct.pic32_sec_osc, %struct.pic32_sec_osc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @readl(i32 %18)
  %20 = load %struct.pic32_sec_osc*, %struct.pic32_sec_osc** %3, align 8
  %21 = getelementptr inbounds %struct.pic32_sec_osc, %struct.pic32_sec_osc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %19, %22
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %26, %1
  %30 = phi i1 [ false, %1 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  ret i32 %31
}

declare dso_local %struct.pic32_sec_osc* @clkhw_to_sosc(%struct.clk_hw*) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
