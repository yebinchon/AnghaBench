; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_hw_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_hw_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i32*, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@HOST_CTL = common dso_local global i64 0, align 8
@HOST_IRQ_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.driver_data*)* @mtip_hw_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_hw_exit(%struct.driver_data* %0) #0 {
  %2 = alloca %struct.driver_data*, align 8
  store %struct.driver_data* %0, %struct.driver_data** %2, align 8
  %3 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %4 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %9 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @mtip_deinit_port(i32* %10)
  %12 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %13 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @HOST_CTL, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  %18 = load i32, i32* @HOST_IRQ_EN, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %22 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HOST_CTL, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  br label %27

27:                                               ; preds = %7, %1
  %28 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %29 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @irq_set_affinity_hint(i32 %32, i32* null)
  %34 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %35 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %40 = call i32 @free_irq(i32 %38, %struct.driver_data* %39)
  %41 = call i32 @msleep(i32 1000)
  %42 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %43 = call i32 @mtip_dma_free(%struct.driver_data* %42)
  %44 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %45 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @kfree(i32* %46)
  %48 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %49 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  ret i32 0
}

declare dso_local i32 @mtip_deinit_port(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.driver_data*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mtip_dma_free(%struct.driver_data*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
