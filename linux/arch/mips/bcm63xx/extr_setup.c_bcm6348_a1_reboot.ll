; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/bcm63xx/extr_setup.c_bcm6348_a1_reboot.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/bcm63xx/extr_setup.c_bcm6348_a1_reboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"soft-resetting all blocks ...\0A\00", align 1
@PERF_SOFTRESET_REG = common dso_local global i32 0, align 4
@SOFTRESET_6348_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"jumping to reset vector.\0A\00", align 1
@ST0_BEV = common dso_local global i32 0, align 4
@ST0_ERL = common dso_local global i32 0, align 4
@CONF_CM_CMASK = common dso_local global i32 0, align 4
@CONF_CM_UNCACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bcm6348_a1_reboot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm6348_a1_reboot() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @PERF_SOFTRESET_REG, align 4
  %4 = call i32 @bcm_perf_readl(i32 %3)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @SOFTRESET_6348_ALL, align 4
  %6 = xor i32 %5, -1
  %7 = load i32, i32* %1, align 4
  %8 = and i32 %7, %6
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @PERF_SOFTRESET_REG, align 4
  %11 = call i32 @bcm_perf_writel(i32 %9, i32 %10)
  %12 = call i32 @mdelay(i32 10)
  %13 = load i32, i32* @PERF_SOFTRESET_REG, align 4
  %14 = call i32 @bcm_perf_readl(i32 %13)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* @SOFTRESET_6348_ALL, align 4
  %16 = load i32, i32* %1, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @PERF_SOFTRESET_REG, align 4
  %20 = call i32 @bcm_perf_writel(i32 %18, i32 %19)
  %21 = call i32 @mdelay(i32 10)
  %22 = call i32 @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @ST0_BEV, align 4
  %24 = load i32, i32* @ST0_ERL, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @set_c0_status(i32 %25)
  %27 = load i32, i32* @CONF_CM_CMASK, align 4
  %28 = load i32, i32* @CONF_CM_UNCACHED, align 4
  %29 = call i32 @change_c0_config(i32 %27, i32 %28)
  %30 = call i32 (...) @__flush_cache_all()
  %31 = call i32 @write_c0_wired(i32 0)
  call void asm sideeffect "jr\09$0", "r,~{dirflag},~{fpsr},~{flags}"(i32 -1077936128) #2, !srcloc !2
  br label %32

32:                                               ; preds = %0, %32
  br label %32
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @bcm_perf_readl(i32) #1

declare dso_local i32 @bcm_perf_writel(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @set_c0_status(i32) #1

declare dso_local i32 @change_c0_config(i32, i32) #1

declare dso_local i32 @__flush_cache_all(...) #1

declare dso_local i32 @write_c0_wired(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1086}
