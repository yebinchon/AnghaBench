; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_dma.c_configure_dma_errata.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_dma.c_configure_dma_errata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OMAP2430_REV_ES1_0 = common dso_local global i64 0, align 8
@DMA_ERRATA_IFRAME_BUFFERING = common dso_local global i32 0, align 4
@DMA_ERRATA_PARALLEL_CHANNELS = common dso_local global i32 0, align 4
@DMA_ERRATA_i378 = common dso_local global i32 0, align 4
@DMA_ERRATA_i541 = common dso_local global i32 0, align 4
@OMAP3430_REV_ES1_0 = common dso_local global i64 0, align 8
@DMA_ERRATA_i88 = common dso_local global i32 0, align 4
@DMA_ERRATA_3_3 = common dso_local global i32 0, align 4
@OMAP2_DEVICE_TYPE_GP = common dso_local global i64 0, align 8
@DMA_ROMCODE_BUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @configure_dma_errata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_dma_errata() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i64 (...) @cpu_is_omap2420()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %0
  %5 = call i64 (...) @cpu_is_omap2430()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = call i64 (...) @omap_type()
  %9 = load i64, i64* @OMAP2430_REV_ES1_0, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %7, %0
  %12 = load i32, i32* @DMA_ERRATA_IFRAME_BUFFERING, align 4
  %13 = call i32 @SET_DMA_ERRATA(i32 %12)
  %14 = load i32, i32* @DMA_ERRATA_PARALLEL_CHANNELS, align 4
  %15 = call i32 @SET_DMA_ERRATA(i32 %14)
  br label %16

16:                                               ; preds = %11, %7, %4
  %17 = call i64 (...) @cpu_class_is_omap2()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @DMA_ERRATA_i378, align 4
  %21 = call i32 @SET_DMA_ERRATA(i32 %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = call i64 (...) @cpu_is_omap34xx()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @DMA_ERRATA_i541, align 4
  %27 = call i32 @SET_DMA_ERRATA(i32 %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = call i64 (...) @omap_type()
  %30 = load i64, i64* @OMAP3430_REV_ES1_0, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @DMA_ERRATA_i88, align 4
  %34 = call i32 @SET_DMA_ERRATA(i32 %33)
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i32, i32* @DMA_ERRATA_3_3, align 4
  %37 = call i32 @SET_DMA_ERRATA(i32 %36)
  %38 = call i64 (...) @cpu_is_omap34xx()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = call i64 (...) @omap_type()
  %42 = load i64, i64* @OMAP2_DEVICE_TYPE_GP, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @DMA_ROMCODE_BUG, align 4
  %46 = call i32 @SET_DMA_ERRATA(i32 %45)
  br label %47

47:                                               ; preds = %44, %40, %35
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

declare dso_local i64 @cpu_is_omap2420(...) #1

declare dso_local i64 @cpu_is_omap2430(...) #1

declare dso_local i64 @omap_type(...) #1

declare dso_local i32 @SET_DMA_ERRATA(i32) #1

declare dso_local i64 @cpu_class_is_omap2(...) #1

declare dso_local i64 @cpu_is_omap34xx(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
