; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/bcm63xx/extr_clk.c_enetx_set.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/bcm63xx/extr_clk.c_enetx_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64 }

@clk_enet_misc = common dso_local global i32 0, align 4
@CKCTL_6358_ENET0_EN = common dso_local global i32 0, align 4
@CKCTL_6358_ENET1_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk*, i32)* @enetx_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enetx_set(%struct.clk* %0, i32 %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 @clk_enable_unlocked(i32* @clk_enet_misc)
  br label %12

10:                                               ; preds = %2
  %11 = call i32 @clk_disable_unlocked(i32* @clk_enet_misc)
  br label %12

12:                                               ; preds = %10, %8
  %13 = call i64 (...) @BCMCPU_IS_3368()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = call i64 (...) @BCMCPU_IS_6358()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15, %12
  %19 = load %struct.clk*, %struct.clk** %3, align 8
  %20 = getelementptr inbounds %struct.clk, %struct.clk* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @CKCTL_6358_ENET0_EN, align 4
  store i32 %24, i32* %5, align 4
  br label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @CKCTL_6358_ENET1_EN, align 4
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @bcm_hwclock_set(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %15
  ret void
}

declare dso_local i32 @clk_enable_unlocked(i32*) #1

declare dso_local i32 @clk_disable_unlocked(i32*) #1

declare dso_local i64 @BCMCPU_IS_3368(...) #1

declare dso_local i64 @BCMCPU_IS_6358(...) #1

declare dso_local i32 @bcm_hwclock_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
