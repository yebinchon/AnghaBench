; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/usb/host/extr_adm5120.h_admhc_dma_enable.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/usb/host/extr_adm5120.h_admhc_dma_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.admhcd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ADMHC_HC_DMAE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"DMA enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.admhcd*)* @admhc_dma_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @admhc_dma_enable(%struct.admhcd* %0) #0 {
  %2 = alloca %struct.admhcd*, align 8
  %3 = alloca i32, align 4
  store %struct.admhcd* %0, %struct.admhcd** %2, align 8
  %4 = load %struct.admhcd*, %struct.admhcd** %2, align 8
  %5 = load %struct.admhcd*, %struct.admhcd** %2, align 8
  %6 = getelementptr inbounds %struct.admhcd, %struct.admhcd* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @admhc_readl(%struct.admhcd* %4, i32* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @ADMHC_HC_DMAE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %28

15:                                               ; preds = %1
  %16 = load i32, i32* @ADMHC_HC_DMAE, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.admhcd*, %struct.admhcd** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.admhcd*, %struct.admhcd** %2, align 8
  %22 = getelementptr inbounds %struct.admhcd, %struct.admhcd* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @admhc_writel(%struct.admhcd* %19, i32 %20, i32* %24)
  %26 = load %struct.admhcd*, %struct.admhcd** %2, align 8
  %27 = call i32 @admhc_vdbg(%struct.admhcd* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @admhc_readl(%struct.admhcd*, i32*) #1

declare dso_local i32 @admhc_writel(%struct.admhcd*, i32, i32*) #1

declare dso_local i32 @admhc_vdbg(%struct.admhcd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
