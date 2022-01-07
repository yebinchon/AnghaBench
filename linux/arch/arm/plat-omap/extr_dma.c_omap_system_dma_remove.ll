; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_dma.c_omap_system_dma_remove.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_dma.c_omap_system_dma_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@omap24xx_dma_irq = common dso_local global i32 0, align 4
@dma_chan_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap_system_dma_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_system_dma_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [4 x i8], align 1
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = call i64 (...) @dma_omap2plus()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %10 = call i32 @strcpy(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %13 = call i32 @platform_get_irq_byname(%struct.platform_device* %11, i8* %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @remove_irq(i32 %17, i32* @omap24xx_dma_irq)
  br label %19

19:                                               ; preds = %16, %8
  br label %39

20:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %35, %20
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @dma_chan_count, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @platform_get_irq(%struct.platform_device* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @free_irq(i32 %29, i8* %33)
  br label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %21

38:                                               ; preds = %21
  br label %39

39:                                               ; preds = %38, %19
  ret i32 0
}

declare dso_local i64 @dma_omap2plus(...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @remove_irq(i32, i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @free_irq(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
