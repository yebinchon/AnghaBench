; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_pm34xx.c__prcm_int_handle_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_pm34xx.c__prcm_int_handle_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WKUP_MOD = common dso_local global i32 0, align 4
@OMAP3430_ST_IO_MASK = common dso_local global i32 0, align 4
@OMAP3430_ST_IO_CHAIN_MASK = common dso_local global i32 0, align 4
@CORE_MOD = common dso_local global i32 0, align 4
@OMAP3430_PER_MOD = common dso_local global i32 0, align 4
@OMAP3430_REV_ES1_0 = common dso_local global i64 0, align 8
@OMAP3430ES2_USBHOST_MOD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @_prcm_int_handle_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_prcm_int_handle_wakeup(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @WKUP_MOD, align 4
  %7 = load i32, i32* @OMAP3430_ST_IO_MASK, align 4
  %8 = load i32, i32* @OMAP3430_ST_IO_CHAIN_MASK, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = call i32 @omap_prm_clear_mod_irqs(i32 %6, i32 1, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @CORE_MOD, align 4
  %13 = call i32 @omap_prm_clear_mod_irqs(i32 %12, i32 1, i32 -1)
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @OMAP3430_PER_MOD, align 4
  %17 = call i32 @omap_prm_clear_mod_irqs(i32 %16, i32 1, i32 -1)
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = call i64 (...) @omap_rev()
  %21 = load i64, i64* @OMAP3430_REV_ES1_0, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load i32, i32* @CORE_MOD, align 4
  %25 = call i32 @omap_prm_clear_mod_irqs(i32 %24, i32 3, i32 -1)
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @OMAP3430ES2_USBHOST_MOD, align 4
  %29 = call i32 @omap_prm_clear_mod_irqs(i32 %28, i32 1, i32 -1)
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %23, %2
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @IRQ_HANDLED, align 4
  br label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @IRQ_NONE, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  ret i32 %40
}

declare dso_local i32 @omap_prm_clear_mod_irqs(i32, i32, i32) #1

declare dso_local i64 @omap_rev(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
