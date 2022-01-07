; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c___clk_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c___clk_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_data = type { i32 }
%struct.bcm_clk_trig = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccu_data*, %struct.bcm_clk_trig*)* @__clk_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__clk_trigger(%struct.ccu_data* %0, %struct.bcm_clk_trig* %1) #0 {
  %3 = alloca %struct.ccu_data*, align 8
  %4 = alloca %struct.bcm_clk_trig*, align 8
  store %struct.ccu_data* %0, %struct.ccu_data** %3, align 8
  store %struct.bcm_clk_trig* %1, %struct.bcm_clk_trig** %4, align 8
  %5 = load %struct.ccu_data*, %struct.ccu_data** %3, align 8
  %6 = load %struct.bcm_clk_trig*, %struct.bcm_clk_trig** %4, align 8
  %7 = getelementptr inbounds %struct.bcm_clk_trig, %struct.bcm_clk_trig* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.bcm_clk_trig*, %struct.bcm_clk_trig** %4, align 8
  %10 = getelementptr inbounds %struct.bcm_clk_trig, %struct.bcm_clk_trig* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 1, %11
  %13 = call i32 @__ccu_write(%struct.ccu_data* %5, i32 %8, i32 %12)
  %14 = load %struct.ccu_data*, %struct.ccu_data** %3, align 8
  %15 = load %struct.bcm_clk_trig*, %struct.bcm_clk_trig** %4, align 8
  %16 = getelementptr inbounds %struct.bcm_clk_trig, %struct.bcm_clk_trig* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.bcm_clk_trig*, %struct.bcm_clk_trig** %4, align 8
  %19 = getelementptr inbounds %struct.bcm_clk_trig, %struct.bcm_clk_trig* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @__ccu_wait_bit(%struct.ccu_data* %14, i32 %17, i32 %20, i32 0)
  ret i32 %21
}

declare dso_local i32 @__ccu_write(%struct.ccu_data*, i32, i32) #1

declare dso_local i32 @__ccu_wait_bit(%struct.ccu_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
