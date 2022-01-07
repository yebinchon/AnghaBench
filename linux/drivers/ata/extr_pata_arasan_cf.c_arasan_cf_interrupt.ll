; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_arasan_cf_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_arasan_cf_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arasan_cf_dev = type { i32, %struct.ata_queued_cmd*, %struct.TYPE_3__*, i64, i32 }
%struct.ata_queued_cmd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ata_host = type { %struct.arasan_cf_dev* }

@GIRQ_STS = common dso_local global i64 0, align 8
@GIRQ_CF = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_STS = common dso_local global i64 0, align 8
@IGNORED_IRQS = common dso_local global i32 0, align 4
@CARD_DETECT_IRQ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@PIO_XFER_ERR_IRQ = common dso_local global i32 0, align 4
@ATA_DMA_ERR = common dso_local global i32 0, align 4
@XFER_CTR = common dso_local global i64 0, align 8
@XFER_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"pio xfer err irq\0A\00", align 1
@BUF_AVAIL_IRQ = common dso_local global i32 0, align 4
@XFER_DONE_IRQ = common dso_local global i32 0, align 4
@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @arasan_cf_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arasan_cf_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.arasan_cf_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ata_queued_cmd*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.ata_host*
  %12 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %11, i32 0, i32 0
  %13 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %12, align 8
  store %struct.arasan_cf_dev* %13, %struct.arasan_cf_dev** %6, align 8
  %14 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %6, align 8
  %15 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @GIRQ_STS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @GIRQ_CF, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %150

26:                                               ; preds = %2
  %27 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %6, align 8
  %28 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %6, align 8
  %34 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IRQ_STS, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readl(i64 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %6, align 8
  %41 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IRQ_STS, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  %46 = load i32, i32* @GIRQ_CF, align 4
  %47 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %6, align 8
  %48 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @GIRQ_STS, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 %46, i64 %51)
  %53 = load i32, i32* @IGNORED_IRQS, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @CARD_DETECT_IRQ, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %26
  %62 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %6, align 8
  %63 = call i32 @cf_card_detect(%struct.arasan_cf_dev* %62, i32 1)
  %64 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %6, align 8
  %65 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %64, i32 0, i32 2
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %70, i32* %3, align 4
  br label %150

71:                                               ; preds = %26
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @PIO_XFER_ERR_IRQ, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %111

76:                                               ; preds = %71
  %77 = load i32, i32* @ATA_DMA_ERR, align 4
  %78 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %6, align 8
  %79 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  %80 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %6, align 8
  %81 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @XFER_CTR, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @readl(i64 %84)
  %86 = load i32, i32* @XFER_START, align 4
  %87 = xor i32 %86, -1
  %88 = and i32 %85, %87
  %89 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %6, align 8
  %90 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @XFER_CTR, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel(i32 %88, i64 %93)
  %95 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %6, align 8
  %96 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %95, i32 0, i32 2
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  %101 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %6, align 8
  %102 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %101, i32 0, i32 0
  %103 = call i32 @complete(i32* %102)
  %104 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %6, align 8
  %105 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %104, i32 0, i32 2
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @dev_err(i32 %108, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %110 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %110, i32* %3, align 4
  br label %150

111:                                              ; preds = %71
  %112 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %6, align 8
  %113 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %112, i32 0, i32 2
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i64, i64* %7, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* %115, i64 %116)
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @BUF_AVAIL_IRQ, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %111
  %123 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %6, align 8
  %124 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %123, i32 0, i32 0
  %125 = call i32 @complete(i32* %124)
  %126 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %126, i32* %3, align 4
  br label %150

127:                                              ; preds = %111
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @XFER_DONE_IRQ, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %148

132:                                              ; preds = %127
  %133 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %6, align 8
  %134 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %133, i32 0, i32 1
  %135 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %134, align 8
  store %struct.ata_queued_cmd* %135, %struct.ata_queued_cmd** %9, align 8
  %136 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %9, align 8
  %137 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %132
  %144 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %6, align 8
  %145 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %144, i32 0, i32 0
  %146 = call i32 @complete(i32* %145)
  br label %147

147:                                              ; preds = %143, %132
  br label %148

148:                                              ; preds = %147, %127
  %149 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %148, %122, %76, %61, %24
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @cf_card_detect(%struct.arasan_cf_dev*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
