; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_arasan_cf_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_arasan_cf_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arasan_cf_dev = type { i32, i64, %struct.ata_queued_cmd* }
%struct.ata_queued_cmd = type { %struct.ata_taskfile, %struct.ata_port* }
%struct.ata_taskfile = type { i32 }
%struct.ata_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ata_port*, %struct.ata_taskfile*)* }

@XFER_CTR = common dso_local global i64 0, align 8
@XFER_DIR_MASK = common dso_local global i32 0, align 4
@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@XFER_WRITE = common dso_local global i32 0, align 4
@XFER_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arasan_cf_dev*)* @arasan_cf_dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arasan_cf_dma_start(%struct.arasan_cf_dev* %0) #0 {
  %2 = alloca %struct.arasan_cf_dev*, align 8
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_taskfile*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.arasan_cf_dev* %0, %struct.arasan_cf_dev** %2, align 8
  %8 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %9 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %8, i32 0, i32 2
  %10 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %9, align 8
  store %struct.ata_queued_cmd* %10, %struct.ata_queued_cmd** %3, align 8
  %11 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %12 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %11, i32 0, i32 1
  %13 = load %struct.ata_port*, %struct.ata_port** %12, align 8
  store %struct.ata_port* %13, %struct.ata_port** %4, align 8
  %14 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %15 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %14, i32 0, i32 0
  store %struct.ata_taskfile* %15, %struct.ata_taskfile** %5, align 8
  %16 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %17 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @XFER_CTR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  %22 = load i32, i32* @XFER_DIR_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  store i32 %24, i32* %6, align 4
  %25 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %26 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @XFER_WRITE, align 4
  br label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @XFER_READ, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %42 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @XFER_CTR, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  %47 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %48 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (%struct.ata_port*, %struct.ata_taskfile*)*, i32 (%struct.ata_port*, %struct.ata_taskfile*)** %50, align 8
  %52 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %53 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %54 = call i32 %51(%struct.ata_port* %52, %struct.ata_taskfile* %53)
  %55 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %56 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %55, i32 0, i32 0
  %57 = call i32 @ata_sff_queue_work(i32* %56)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @ata_sff_queue_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
