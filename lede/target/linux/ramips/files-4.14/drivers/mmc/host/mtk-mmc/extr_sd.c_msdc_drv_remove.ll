; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/mmc/host/mtk-mmc/extr_sd.c_msdc_drv_remove.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/mmc/host/mtk-mmc/extr_sd.c_msdc_drv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mmc_host = type { i32 }
%struct.msdc_host = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"removed !!!\00", align 1
@MAX_GPD_NUM = common dso_local global i32 0, align 4
@MAX_BD_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @msdc_drv_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdc_drv_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.msdc_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.mmc_host* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.mmc_host* %6, %struct.mmc_host** %3, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = icmp ne %struct.mmc_host* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %13 = call %struct.msdc_host* @mmc_priv(%struct.mmc_host* %12)
  store %struct.msdc_host* %13, %struct.msdc_host** %4, align 8
  %14 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %15 = icmp ne %struct.msdc_host* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = call i32 @ERR_MSG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %20, i32* null)
  %22 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %23 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mmc_remove_host(i32 %24)
  %26 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %27 = call i32 @msdc_deinit_hw(%struct.msdc_host* %26)
  %28 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %29 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %28, i32 0, i32 2
  %30 = call i32 @cancel_delayed_work_sync(i32* %29)
  %31 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load i32, i32* @MAX_GPD_NUM, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %38 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %42 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dma_free_coherent(i32* %32, i32 %36, i32 %40, i32 %44)
  %46 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load i32, i32* @MAX_BD_NUM, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %53 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %57 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dma_free_coherent(i32* %47, i32 %51, i32 %55, i32 %59)
  %61 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %62 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @mmc_free_host(i32 %63)
  ret i32 0
}

declare dso_local %struct.mmc_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.msdc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @ERR_MSG(i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @mmc_remove_host(i32) #1

declare dso_local i32 @msdc_deinit_hw(%struct.msdc_host*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @mmc_free_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
