; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c_div_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c_div_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_data = type { i32 }
%struct.bcm_clk_gate = type { i32 }
%struct.bcm_clk_div = type { i32 }
%struct.bcm_clk_trig = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccu_data*, %struct.bcm_clk_gate*, %struct.bcm_clk_div*, %struct.bcm_clk_trig*)* @div_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @div_init(%struct.ccu_data* %0, %struct.bcm_clk_gate* %1, %struct.bcm_clk_div* %2, %struct.bcm_clk_trig* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ccu_data*, align 8
  %7 = alloca %struct.bcm_clk_gate*, align 8
  %8 = alloca %struct.bcm_clk_div*, align 8
  %9 = alloca %struct.bcm_clk_trig*, align 8
  store %struct.ccu_data* %0, %struct.ccu_data** %6, align 8
  store %struct.bcm_clk_gate* %1, %struct.bcm_clk_gate** %7, align 8
  store %struct.bcm_clk_div* %2, %struct.bcm_clk_div** %8, align 8
  store %struct.bcm_clk_trig* %3, %struct.bcm_clk_trig** %9, align 8
  %10 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %8, align 8
  %11 = call i32 @divider_exists(%struct.bcm_clk_div* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %8, align 8
  %15 = call i64 @divider_is_fixed(%struct.bcm_clk_div* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %4
  store i32 1, i32* %5, align 4
  br label %27

18:                                               ; preds = %13
  %19 = load %struct.ccu_data*, %struct.ccu_data** %6, align 8
  %20 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %7, align 8
  %21 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %8, align 8
  %22 = load %struct.bcm_clk_trig*, %struct.bcm_clk_trig** %9, align 8
  %23 = call i32 @__div_commit(%struct.ccu_data* %19, %struct.bcm_clk_gate* %20, %struct.bcm_clk_div* %21, %struct.bcm_clk_trig* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %18, %17
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @divider_exists(%struct.bcm_clk_div*) #1

declare dso_local i64 @divider_is_fixed(%struct.bcm_clk_div*) #1

declare dso_local i32 @__div_commit(%struct.ccu_data*, %struct.bcm_clk_gate*, %struct.bcm_clk_div*, %struct.bcm_clk_trig*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
