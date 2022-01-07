; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4a/extr_smp-shx3.c_shx3_start_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4a/extr_smp-shx3.c_shx3_start_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STBCR_MSTP = common dso_local global i64 0, align 8
@STBCR_RESET = common dso_local global i64 0, align 8
@STBCR_LTSLP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @shx3_start_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shx3_start_cpu(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %5 = call i64 (...) @__in_29bit_mode()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i64, i64* %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @RESET_REG(i32 %9)
  %11 = call i32 @__raw_writel(i64 %8, i32 %10)
  br label %18

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @virt_to_phys(i64 %13)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @RESET_REG(i32 %15)
  %17 = call i32 @__raw_writel(i64 %14, i32 %16)
  br label %18

18:                                               ; preds = %12, %7
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @STBCR_REG(i32 %19)
  %21 = call i64 @__raw_readl(i32 %20)
  %22 = load i64, i64* @STBCR_MSTP, align 8
  %23 = and i64 %21, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load i64, i64* @STBCR_MSTP, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @STBCR_REG(i32 %27)
  %29 = call i32 @__raw_writel(i64 %26, i32 %28)
  br label %30

30:                                               ; preds = %25, %18
  br label %31

31:                                               ; preds = %39, %30
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @STBCR_REG(i32 %32)
  %34 = call i64 @__raw_readl(i32 %33)
  %35 = load i64, i64* @STBCR_MSTP, align 8
  %36 = and i64 %34, %35
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = call i32 (...) @cpu_relax()
  br label %31

41:                                               ; preds = %31
  %42 = load i64, i64* @STBCR_RESET, align 8
  %43 = load i64, i64* @STBCR_LTSLP, align 8
  %44 = or i64 %42, %43
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @STBCR_REG(i32 %45)
  %47 = call i32 @__raw_writel(i64 %44, i32 %46)
  ret void
}

declare dso_local i64 @__in_29bit_mode(...) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

declare dso_local i32 @RESET_REG(i32) #1

declare dso_local i64 @virt_to_phys(i64) #1

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @STBCR_REG(i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
