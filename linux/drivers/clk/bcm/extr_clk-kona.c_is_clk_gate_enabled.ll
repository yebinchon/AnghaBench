; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c_is_clk_gate_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c_is_clk_gate_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_data = type { i32 }
%struct.bcm_clk_gate = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccu_data*, %struct.bcm_clk_gate*)* @is_clk_gate_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_clk_gate_enabled(%struct.ccu_data* %0, %struct.bcm_clk_gate* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccu_data*, align 8
  %5 = alloca %struct.bcm_clk_gate*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ccu_data* %0, %struct.ccu_data** %4, align 8
  store %struct.bcm_clk_gate* %1, %struct.bcm_clk_gate** %5, align 8
  %8 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %5, align 8
  %9 = call i32 @gate_exists(%struct.bcm_clk_gate* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %22

12:                                               ; preds = %2
  %13 = load %struct.ccu_data*, %struct.ccu_data** %4, align 8
  %14 = call i64 @ccu_lock(%struct.ccu_data* %13)
  store i64 %14, i64* %6, align 8
  %15 = load %struct.ccu_data*, %struct.ccu_data** %4, align 8
  %16 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %5, align 8
  %17 = call i32 @__is_clk_gate_enabled(%struct.ccu_data* %15, %struct.bcm_clk_gate* %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.ccu_data*, %struct.ccu_data** %4, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @ccu_unlock(%struct.ccu_data* %18, i64 %19)
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %12, %11
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @gate_exists(%struct.bcm_clk_gate*) #1

declare dso_local i64 @ccu_lock(%struct.ccu_data*) #1

declare dso_local i32 @__is_clk_gate_enabled(%struct.ccu_data*, %struct.bcm_clk_gate*) #1

declare dso_local i32 @ccu_unlock(%struct.ccu_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
