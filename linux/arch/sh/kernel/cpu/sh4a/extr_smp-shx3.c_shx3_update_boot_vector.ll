; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4a/extr_smp-shx3.c_shx3_update_boot_vector.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4a/extr_smp-shx3.c_shx3_update_boot_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STBCR_MSTP = common dso_local global i32 0, align 4
@STBCR_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @shx3_update_boot_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shx3_update_boot_vector(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @STBCR_MSTP, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @STBCR_REG(i32 %4)
  %6 = call i32 @__raw_writel(i32 %3, i32 %5)
  br label %7

7:                                                ; preds = %15, %1
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @STBCR_REG(i32 %8)
  %10 = call i32 @__raw_readl(i32 %9)
  %11 = load i32, i32* @STBCR_MSTP, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %17

15:                                               ; preds = %7
  %16 = call i32 (...) @cpu_relax()
  br label %7

17:                                               ; preds = %7
  %18 = load i32, i32* @STBCR_RESET, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @STBCR_REG(i32 %19)
  %21 = call i32 @__raw_writel(i32 %18, i32 %20)
  ret void
}

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @STBCR_REG(i32) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
