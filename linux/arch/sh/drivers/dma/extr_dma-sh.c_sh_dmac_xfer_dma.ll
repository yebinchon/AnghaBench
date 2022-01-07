; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/drivers/dma/extr_dma-sh.c_sh_dmac_xfer_dma.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/drivers/dma/extr_dma-sh.c_sh_dmac_xfer_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_channel = type { i32, i32, i64, i32, i32 }

@DMA_CONFIGURED = common dso_local global i32 0, align 4
@PVR2_CASCADE_CHAN = common dso_local global i64 0, align 8
@SAR = common dso_local global i64 0, align 8
@DAR = common dso_local global i64 0, align 8
@TCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_channel*)* @sh_dmac_xfer_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_dmac_xfer_dma(%struct.dma_channel* %0) #0 {
  %2 = alloca %struct.dma_channel*, align 8
  store %struct.dma_channel* %0, %struct.dma_channel** %2, align 8
  %3 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %4 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @DMA_CONFIGURED, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %15 = call i32 @sh_dmac_configure_channel(%struct.dma_channel* %14, i32 0)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %18 = call i32 @sh_dmac_disable_dma(%struct.dma_channel* %17)
  %19 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %20 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %16
  %24 = call i64 (...) @mach_is_dreamcast()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %28 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PVR2_CASCADE_CHAN, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %26, %16
  %33 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %34 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %37 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @dma_base_addr(i64 %38)
  %40 = load i64, i64* @SAR, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @__raw_writel(i32 %35, i64 %41)
  br label %43

43:                                               ; preds = %32, %26, %23
  %44 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %45 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %43
  %49 = call i64 (...) @mach_is_dreamcast()
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  %52 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %53 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PVR2_CASCADE_CHAN, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %51, %43
  %58 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %59 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %62 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @dma_base_addr(i64 %63)
  %65 = load i64, i64* @DAR, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @__raw_writel(i32 %60, i64 %66)
  br label %68

68:                                               ; preds = %57, %51, %48
  %69 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %70 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %73 = call i32 @calc_xmit_shift(%struct.dma_channel* %72)
  %74 = ashr i32 %71, %73
  %75 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %76 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @dma_base_addr(i64 %77)
  %79 = load i64, i64* @TCR, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @__raw_writel(i32 %74, i64 %80)
  %82 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %83 = call i32 @sh_dmac_enable_dma(%struct.dma_channel* %82)
  ret i32 0
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sh_dmac_configure_channel(%struct.dma_channel*, i32) #1

declare dso_local i32 @sh_dmac_disable_dma(%struct.dma_channel*) #1

declare dso_local i64 @mach_is_dreamcast(...) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i64 @dma_base_addr(i64) #1

declare dso_local i32 @calc_xmit_shift(%struct.dma_channel*) #1

declare dso_local i32 @sh_dmac_enable_dma(%struct.dma_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
