; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_arasan_cf_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_arasan_cf_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.arasan_cf_dev* }
%struct.arasan_cf_dev = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ata_device = type { i64 }

@OP_MODE = common dso_local global i64 0, align 8
@MULTI_WORD_DMA_ENB = common dso_local global i64 0, align 8
@ULTRA_DMA_ENB = common dso_local global i64 0, align 8
@TM_CFG = common dso_local global i64 0, align 8
@XFER_UDMA_0 = common dso_local global i64 0, align 8
@XFER_UDMA_6 = common dso_local global i64 0, align 8
@ULTRA_DMA_TIMING_MASK = common dso_local global i64 0, align 8
@ULTRA_DMA_TIMING_SHIFT = common dso_local global i64 0, align 8
@XFER_MW_DMA_0 = common dso_local global i64 0, align 8
@XFER_MW_DMA_4 = common dso_local global i64 0, align 8
@TRUEIDE_MWORD_DMA_TIMING_MASK = common dso_local global i64 0, align 8
@TRUEIDE_MWORD_DMA_TIMING_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Unknown DMA mode\0A\00", align 1
@DMA_XFER_MODE = common dso_local global i64 0, align 8
@XFER_CTR = common dso_local global i64 0, align 8
@PIO_XFER_ERR_IRQ = common dso_local global i32 0, align 4
@BUF_AVAIL_IRQ = common dso_local global i32 0, align 4
@XFER_DONE_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @arasan_cf_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arasan_cf_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.arasan_cf_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %10 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %11 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %13, align 8
  store %struct.arasan_cf_dev* %14, %struct.arasan_cf_dev** %5, align 8
  %15 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %16 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %5, align 8
  %19 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %5, align 8
  %25 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @OP_MODE, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i64 @readl(i64 %28)
  %30 = load i64, i64* @MULTI_WORD_DMA_ENB, align 8
  %31 = load i64, i64* @ULTRA_DMA_ENB, align 8
  %32 = or i64 %30, %31
  %33 = xor i64 %32, -1
  %34 = and i64 %29, %33
  store i64 %34, i64* %6, align 8
  %35 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %5, align 8
  %36 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TM_CFG, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i64 @readl(i64 %39)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @XFER_UDMA_0, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %2
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @XFER_UDMA_6, align 8
  %47 = icmp sle i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load i64, i64* @ULTRA_DMA_ENB, align 8
  %50 = load i64, i64* %6, align 8
  %51 = or i64 %50, %49
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* @ULTRA_DMA_TIMING_MASK, align 8
  %53 = xor i64 %52, -1
  %54 = load i64, i64* %7, align 8
  %55 = and i64 %54, %53
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @XFER_UDMA_0, align 8
  %58 = sub nsw i64 %56, %57
  %59 = load i64, i64* @ULTRA_DMA_TIMING_SHIFT, align 8
  %60 = shl i64 %58, %59
  %61 = load i64, i64* %7, align 8
  %62 = or i64 %61, %60
  store i64 %62, i64* %7, align 8
  br label %98

63:                                               ; preds = %44, %2
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @XFER_MW_DMA_0, align 8
  %66 = icmp sge i64 %64, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %63
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @XFER_MW_DMA_4, align 8
  %70 = icmp sle i64 %68, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %67
  %72 = load i64, i64* @MULTI_WORD_DMA_ENB, align 8
  %73 = load i64, i64* %6, align 8
  %74 = or i64 %73, %72
  store i64 %74, i64* %6, align 8
  %75 = load i64, i64* @TRUEIDE_MWORD_DMA_TIMING_MASK, align 8
  %76 = xor i64 %75, -1
  %77 = load i64, i64* %7, align 8
  %78 = and i64 %77, %76
  store i64 %78, i64* %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @XFER_MW_DMA_0, align 8
  %81 = sub nsw i64 %79, %80
  %82 = load i64, i64* @TRUEIDE_MWORD_DMA_TIMING_SHIFT, align 8
  %83 = shl i64 %81, %82
  %84 = load i64, i64* %7, align 8
  %85 = or i64 %84, %83
  store i64 %85, i64* %7, align 8
  br label %97

86:                                               ; preds = %67, %63
  %87 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %88 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @dev_err(i32 %89, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %91 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %5, align 8
  %92 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %9, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  br label %134

97:                                               ; preds = %71
  br label %98

98:                                               ; preds = %97, %48
  %99 = load i64, i64* %6, align 8
  %100 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %5, align 8
  %101 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @OP_MODE, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @writel(i64 %99, i64 %104)
  %106 = load i64, i64* %7, align 8
  %107 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %5, align 8
  %108 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @TM_CFG, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel(i64 %106, i64 %111)
  %113 = load i64, i64* @DMA_XFER_MODE, align 8
  %114 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %5, align 8
  %115 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @XFER_CTR, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @writel(i64 %113, i64 %118)
  %120 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %5, align 8
  %121 = load i32, i32* @PIO_XFER_ERR_IRQ, align 4
  %122 = call i32 @cf_interrupt_enable(%struct.arasan_cf_dev* %120, i32 %121, i32 0)
  %123 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %5, align 8
  %124 = load i32, i32* @BUF_AVAIL_IRQ, align 4
  %125 = load i32, i32* @XFER_DONE_IRQ, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @cf_interrupt_enable(%struct.arasan_cf_dev* %123, i32 %126, i32 1)
  %128 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %5, align 8
  %129 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %128, i32 0, i32 0
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i64, i64* %9, align 8
  %133 = call i32 @spin_unlock_irqrestore(i32* %131, i64 %132)
  br label %134

134:                                              ; preds = %98, %86
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @cf_interrupt_enable(%struct.arasan_cf_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
