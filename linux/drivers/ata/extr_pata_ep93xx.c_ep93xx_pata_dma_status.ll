; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ep93xx.c_ep93xx_pata_dma_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ep93xx.c_ep93xx_pata_dma_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ep93xx_pata_data* }
%struct.ep93xx_pata_data = type { i64 }

@IDEUDMASTS = common dso_local global i64 0, align 8
@IDEUDMASTS_NDO = common dso_local global i32 0, align 4
@IDEUDMASTS_NDI = common dso_local global i32 0, align 4
@IDEUDMASTS_N4X = common dso_local global i32 0, align 4
@IDEUDMASTS_INTIDE = common dso_local global i32 0, align 4
@ATA_DMA_ERR = common dso_local global i32 0, align 4
@IDECTRL = common dso_local global i64 0, align 8
@IDECTRL_INTRQ = common dso_local global i32 0, align 4
@ATA_DMA_INTR = common dso_local global i32 0, align 4
@IDEUDMASTS_SBUSY = common dso_local global i32 0, align 4
@IDEUDMASTS_DMAIDE = common dso_local global i32 0, align 4
@ATA_DMA_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*)* @ep93xx_pata_dma_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_pata_dma_status(%struct.ata_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ep93xx_pata_data*, align 8
  %5 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  %6 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %7 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %9, align 8
  store %struct.ep93xx_pata_data* %10, %struct.ep93xx_pata_data** %4, align 8
  %11 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %4, align 8
  %12 = getelementptr inbounds %struct.ep93xx_pata_data, %struct.ep93xx_pata_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IDEUDMASTS, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @IDEUDMASTS_NDO, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @IDEUDMASTS_NDI, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @IDEUDMASTS_N4X, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @IDEUDMASTS_INTIDE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31, %26, %21, %1
  %37 = load i32, i32* @ATA_DMA_ERR, align 4
  store i32 %37, i32* %2, align 4
  br label %63

38:                                               ; preds = %31
  %39 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %4, align 8
  %40 = getelementptr inbounds %struct.ep93xx_pata_data, %struct.ep93xx_pata_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IDECTRL, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl(i64 %43)
  %45 = load i32, i32* @IDECTRL_INTRQ, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* @ATA_DMA_INTR, align 4
  store i32 %49, i32* %2, align 4
  br label %63

50:                                               ; preds = %38
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @IDEUDMASTS_SBUSY, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @IDEUDMASTS_DMAIDE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55, %50
  %61 = load i32, i32* @ATA_DMA_ACTIVE, align 4
  store i32 %61, i32* %2, align 4
  br label %63

62:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %60, %48, %36
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
