; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-mvebu/extr_pmsu.c_mvebu_pmsu_dfs_request_local.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-mvebu/extr_pmsu.c_mvebu_pmsu_dfs_request_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pmsu_mp_base = common dso_local global i64 0, align 8
@PMSU_STATUS_AND_MASK_CPU_IDLE_WAIT = common dso_local global i32 0, align 4
@PMSU_STATUS_AND_MASK_IRQ_MASK = common dso_local global i32 0, align 4
@PMSU_STATUS_AND_MASK_FIQ_MASK = common dso_local global i32 0, align 4
@PMSU_CONTROL_AND_CONFIG_DFS_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mvebu_pmsu_dfs_request_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvebu_pmsu_dfs_request_local(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = call i32 (...) @smp_processor_id()
  store i32 %6, i32* %4, align 4
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @local_irq_save(i64 %7)
  %9 = load i64, i64* @pmsu_mp_base, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @PMSU_STATUS_AND_MASK(i32 %10)
  %12 = add nsw i64 %9, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @PMSU_STATUS_AND_MASK_CPU_IDLE_WAIT, align 4
  %15 = load i32, i32* @PMSU_STATUS_AND_MASK_IRQ_MASK, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @PMSU_STATUS_AND_MASK_FIQ_MASK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i64, i64* @pmsu_mp_base, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @PMSU_STATUS_AND_MASK(i32 %23)
  %25 = add nsw i64 %22, %24
  %26 = call i32 @writel(i32 %21, i64 %25)
  %27 = load i64, i64* @pmsu_mp_base, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @PMSU_CONTROL_AND_CONFIG(i32 %28)
  %30 = add nsw i64 %27, %29
  %31 = call i32 @readl(i64 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* @PMSU_CONTROL_AND_CONFIG_DFS_REQ, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i64, i64* @pmsu_mp_base, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @PMSU_CONTROL_AND_CONFIG(i32 %37)
  %39 = add nsw i64 %36, %38
  %40 = call i32 @writel(i32 %35, i64 %39)
  %41 = call i32 (...) @wfi()
  %42 = load i64, i64* @pmsu_mp_base, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @PMSU_STATUS_AND_MASK(i32 %43)
  %45 = add nsw i64 %42, %44
  %46 = call i32 @readl(i64 %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* @PMSU_STATUS_AND_MASK_CPU_IDLE_WAIT, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i64, i64* @pmsu_mp_base, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @PMSU_STATUS_AND_MASK(i32 %53)
  %55 = add nsw i64 %52, %54
  %56 = call i32 @writel(i32 %51, i64 %55)
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @local_irq_restore(i64 %57)
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @PMSU_STATUS_AND_MASK(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @PMSU_CONTROL_AND_CONFIG(i32) #1

declare dso_local i32 @wfi(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
