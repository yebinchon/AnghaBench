; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_arasan_cf_freeze.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_arasan_cf_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.arasan_cf_dev* }
%struct.arasan_cf_dev = type { i32, i64 }

@XFER_CTR = common dso_local global i64 0, align 8
@XFER_START = common dso_local global i32 0, align 4
@ATA_DMA_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*)* @arasan_cf_freeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arasan_cf_freeze(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca %struct.arasan_cf_dev*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %4 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %5 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %7, align 8
  store %struct.arasan_cf_dev* %8, %struct.arasan_cf_dev** %3, align 8
  %9 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %10 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @XFER_CTR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  %15 = load i32, i32* @XFER_START, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %19 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @XFER_CTR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  %24 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %25 = call i32 @cf_ctrl_reset(%struct.arasan_cf_dev* %24)
  %26 = load i32, i32* @ATA_DMA_ERR, align 4
  %27 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %28 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %30 = call i32 @ata_sff_dma_pause(%struct.ata_port* %29)
  %31 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %32 = call i32 @ata_sff_freeze(%struct.ata_port* %31)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @cf_ctrl_reset(%struct.arasan_cf_dev*) #1

declare dso_local i32 @ata_sff_dma_pause(%struct.ata_port*) #1

declare dso_local i32 @ata_sff_freeze(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
