; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c_sel_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c_sel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_data = type { i32 }
%struct.bcm_clk_gate = type { i32 }
%struct.bcm_clk_sel = type { i32 }
%struct.bcm_clk_trig = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccu_data*, %struct.bcm_clk_gate*, %struct.bcm_clk_sel*, %struct.bcm_clk_trig*)* @sel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sel_init(%struct.ccu_data* %0, %struct.bcm_clk_gate* %1, %struct.bcm_clk_sel* %2, %struct.bcm_clk_trig* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ccu_data*, align 8
  %7 = alloca %struct.bcm_clk_gate*, align 8
  %8 = alloca %struct.bcm_clk_sel*, align 8
  %9 = alloca %struct.bcm_clk_trig*, align 8
  store %struct.ccu_data* %0, %struct.ccu_data** %6, align 8
  store %struct.bcm_clk_gate* %1, %struct.bcm_clk_gate** %7, align 8
  store %struct.bcm_clk_sel* %2, %struct.bcm_clk_sel** %8, align 8
  store %struct.bcm_clk_trig* %3, %struct.bcm_clk_trig** %9, align 8
  %10 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %8, align 8
  %11 = call i32 @selector_exists(%struct.bcm_clk_sel* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %23

14:                                               ; preds = %4
  %15 = load %struct.ccu_data*, %struct.ccu_data** %6, align 8
  %16 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %7, align 8
  %17 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %8, align 8
  %18 = load %struct.bcm_clk_trig*, %struct.bcm_clk_trig** %9, align 8
  %19 = call i32 @__sel_commit(%struct.ccu_data* %15, %struct.bcm_clk_gate* %16, %struct.bcm_clk_sel* %17, %struct.bcm_clk_trig* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %14, %13
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @selector_exists(%struct.bcm_clk_sel*) #1

declare dso_local i32 @__sel_commit(%struct.ccu_data*, %struct.bcm_clk_gate*, %struct.bcm_clk_sel*, %struct.bcm_clk_trig*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
