; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c___is_clk_gate_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c___is_clk_gate_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_data = type { i32 }
%struct.bcm_clk_gate = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccu_data*, %struct.bcm_clk_gate*)* @__is_clk_gate_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__is_clk_gate_enabled(%struct.ccu_data* %0, %struct.bcm_clk_gate* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccu_data*, align 8
  %5 = alloca %struct.bcm_clk_gate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ccu_data* %0, %struct.ccu_data** %4, align 8
  store %struct.bcm_clk_gate* %1, %struct.bcm_clk_gate** %5, align 8
  %8 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %5, align 8
  %9 = call i32 @gate_exists(%struct.bcm_clk_gate* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %27

12:                                               ; preds = %2
  %13 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %5, align 8
  %14 = getelementptr inbounds %struct.bcm_clk_gate, %struct.bcm_clk_gate* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 1, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.ccu_data*, %struct.ccu_data** %4, align 8
  %18 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %5, align 8
  %19 = getelementptr inbounds %struct.bcm_clk_gate, %struct.bcm_clk_gate* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @__ccu_read(%struct.ccu_data* %17, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %12, %11
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @gate_exists(%struct.bcm_clk_gate*) #1

declare dso_local i32 @__ccu_read(%struct.ccu_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
