; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_omap3-rom-rng.c_omap3_rom_rng_get_random.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_omap3-rom-rng.c_omap3_rom_rng_get_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@idle_work = common dso_local global i32 0, align 4
@rng_idle = common dso_local global i64 0, align 8
@rng_clk = common dso_local global i32 0, align 4
@RNG_GEN_PRNG_HW_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"HW init failed: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@RNG_GEN_HW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @omap3_rom_rng_get_random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap3_rom_rng_get_random(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 @cancel_delayed_work_sync(i32* @idle_work)
  %9 = load i64, i64* @rng_idle, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  %12 = load i32, i32* @rng_clk, align 4
  %13 = call i32 @clk_prepare_enable(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %46

18:                                               ; preds = %11
  %19 = load i32, i32* @RNG_GEN_PRNG_HW_INIT, align 4
  %20 = call i32 @omap3_rom_rng_call(i32 0, i32 0, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i32, i32* @rng_clk, align 4
  %25 = call i32 @clk_disable_unprepare(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %46

30:                                               ; preds = %18
  store i64 0, i64* @rng_idle, align 8
  br label %31

31:                                               ; preds = %30, %2
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @virt_to_phys(i8* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @RNG_GEN_HW, align 4
  %37 = call i32 @omap3_rom_rng_call(i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = call i32 @msecs_to_jiffies(i32 500)
  %39 = call i32 @schedule_delayed_work(i32* @idle_work, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %46

45:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %42, %23, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @omap3_rom_rng_call(i32, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @virt_to_phys(i8*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
