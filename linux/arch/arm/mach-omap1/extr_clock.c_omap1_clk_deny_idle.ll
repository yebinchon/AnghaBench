; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_clock.c_omap1_clk_deny_idle.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_clock.c_omap1_clk_deny_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.arm_idlect1_clk = type { i32, i32 }

@CLOCK_IDLE_CONTROL = common dso_local global i32 0, align 4
@arm_idlect1_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk*)* @omap1_clk_deny_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap1_clk_deny_idle(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca %struct.arm_idlect1_clk*, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %4 = load %struct.clk*, %struct.clk** %2, align 8
  %5 = bitcast %struct.clk* %4 to %struct.arm_idlect1_clk*
  store %struct.arm_idlect1_clk* %5, %struct.arm_idlect1_clk** %3, align 8
  %6 = load %struct.clk*, %struct.clk** %2, align 8
  %7 = getelementptr inbounds %struct.clk, %struct.clk* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @CLOCK_IDLE_CONTROL, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.arm_idlect1_clk*, %struct.arm_idlect1_clk** %3, align 8
  %15 = getelementptr inbounds %struct.arm_idlect1_clk, %struct.arm_idlect1_clk* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.arm_idlect1_clk*, %struct.arm_idlect1_clk** %3, align 8
  %21 = getelementptr inbounds %struct.arm_idlect1_clk, %struct.arm_idlect1_clk* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 1, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* @arm_idlect1_mask, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* @arm_idlect1_mask, align 4
  br label %27

27:                                               ; preds = %12, %19, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
