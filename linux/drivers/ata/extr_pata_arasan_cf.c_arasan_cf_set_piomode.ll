; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_arasan_cf_set_piomode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_arasan_cf_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.arasan_cf_dev* }
%struct.arasan_cf_dev = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ata_device = type { i32 }

@XFER_PIO_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Unknown PIO mode\0A\00", align 1
@OP_MODE = common dso_local global i64 0, align 8
@ULTRA_DMA_ENB = common dso_local global i32 0, align 4
@MULTI_WORD_DMA_ENB = common dso_local global i32 0, align 4
@DRQ_BLOCK_SIZE_MASK = common dso_local global i32 0, align 4
@TM_CFG = common dso_local global i64 0, align 8
@TRUEIDE_PIO_TIMING_MASK = common dso_local global i32 0, align 4
@TRUEIDE_PIO_TIMING_SHIFT = common dso_local global i32 0, align 4
@BUF_AVAIL_IRQ = common dso_local global i32 0, align 4
@XFER_DONE_IRQ = common dso_local global i32 0, align 4
@PIO_XFER_ERR_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @arasan_cf_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arasan_cf_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.arasan_cf_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %9 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %12, align 8
  store %struct.arasan_cf_dev* %13, %struct.arasan_cf_dev** %5, align 8
  %14 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %15 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @XFER_PIO_0, align 4
  %18 = sub nsw i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 6
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %23 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %88

26:                                               ; preds = %2
  %27 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %5, align 8
  %28 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %5, align 8
  %34 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @OP_MODE, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readl(i64 %37)
  %39 = load i32, i32* @ULTRA_DMA_ENB, align 4
  %40 = load i32, i32* @MULTI_WORD_DMA_ENB, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @DRQ_BLOCK_SIZE_MASK, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = and i32 %38, %44
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %5, align 8
  %48 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @OP_MODE, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 %46, i64 %51)
  %53 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %5, align 8
  %54 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TM_CFG, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @readl(i64 %57)
  %59 = load i32, i32* @TRUEIDE_PIO_TIMING_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @TRUEIDE_PIO_TIMING_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %5, align 8
  %69 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @TM_CFG, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 %67, i64 %72)
  %74 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %5, align 8
  %75 = load i32, i32* @BUF_AVAIL_IRQ, align 4
  %76 = load i32, i32* @XFER_DONE_IRQ, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @cf_interrupt_enable(%struct.arasan_cf_dev* %74, i32 %77, i32 0)
  %79 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %5, align 8
  %80 = load i32, i32* @PIO_XFER_ERR_IRQ, align 4
  %81 = call i32 @cf_interrupt_enable(%struct.arasan_cf_dev* %79, i32 %80, i32 1)
  %82 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %5, align 8
  %83 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  br label %88

88:                                               ; preds = %26, %21
  ret void
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @cf_interrupt_enable(%struct.arasan_cf_dev*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
