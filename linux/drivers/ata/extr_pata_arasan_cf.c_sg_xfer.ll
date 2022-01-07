; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_sg_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_sg_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arasan_cf_dev = type { i32, %struct.TYPE_6__*, i64, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.scatterlist = type { i32 }

@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@EXT_WRITE_PORT = common dso_local global i32 0, align 4
@EXT_READ_PORT = common dso_local global i32 0, align 4
@MAX_XFER_COUNT = common dso_local global i32 0, align 4
@XFER_CTR = common dso_local global i64 0, align 8
@XFER_COUNT_MASK = common dso_local global i32 0, align 4
@XFER_START = common dso_local global i32 0, align 4
@FIFO_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"dma failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arasan_cf_dev*, %struct.scatterlist*)* @sg_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sg_xfer(%struct.arasan_cf_dev* %0, %struct.scatterlist* %1) #0 {
  %3 = alloca %struct.arasan_cf_dev*, align 8
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.arasan_cf_dev* %0, %struct.arasan_cf_dev** %3, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %14 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %15 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %14, i32 0, i32 3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %23 = call i32 @sg_dma_len(%struct.scatterlist* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %28 = call i32 @sg_dma_address(%struct.scatterlist* %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %30 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @EXT_WRITE_PORT, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %5, align 4
  br label %42

34:                                               ; preds = %2
  %35 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %36 = call i32 @sg_dma_address(%struct.scatterlist* %35)
  store i32 %36, i32* %5, align 4
  %37 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %38 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @EXT_READ_PORT, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %34, %26
  br label %43

43:                                               ; preds = %141, %42
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %142

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @MAX_XFER_COUNT, align 4
  %49 = call i32 @min(i32 %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %51 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %12, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %57 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @XFER_CTR, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @readl(i64 %60)
  %62 = load i32, i32* @XFER_COUNT_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @XFER_START, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %71 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @XFER_CTR, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i32 %69, i64 %74)
  %76 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %77 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  br label %82

82:                                               ; preds = %140, %46
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %141

85:                                               ; preds = %82
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %85
  %89 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %90 = call i32 @wait4buf(%struct.arasan_cf_dev* %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %143

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94, %85
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @FIFO_SIZE, align 4
  %98 = call i32 @min(i32 %96, i32 %97)
  store i32 %98, i32* %9, align 4
  %99 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @dma_xfer(%struct.arasan_cf_dev* %99, i32 %100, i32 %101, i32 %102)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %95
  %107 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %108 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %107, i32 0, i32 1
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @dev_err(i32 %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %143

113:                                              ; preds = %95
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %6, align 4
  br label %124

120:                                              ; preds = %113
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %120, %116
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %8, align 4
  %127 = sub nsw i32 %126, %125
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %7, align 4
  %130 = sub nsw i32 %129, %128
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %124
  %134 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %135 = call i32 @wait4buf(%struct.arasan_cf_dev* %134)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %143

139:                                              ; preds = %133
  br label %140

140:                                              ; preds = %139, %124
  br label %82

141:                                              ; preds = %82
  br label %43

142:                                              ; preds = %43
  br label %143

143:                                              ; preds = %142, %138, %106, %93
  %144 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %145 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %144, i32 0, i32 1
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i64, i64* %12, align 8
  %149 = call i32 @spin_lock_irqsave(i32* %147, i64 %148)
  %150 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %151 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @XFER_CTR, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @readl(i64 %154)
  %156 = load i32, i32* @XFER_START, align 4
  %157 = xor i32 %156, -1
  %158 = and i32 %155, %157
  %159 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %160 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @XFER_CTR, align 8
  %163 = add nsw i64 %161, %162
  %164 = call i32 @writel(i32 %158, i64 %163)
  %165 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %3, align 8
  %166 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %165, i32 0, i32 1
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i64, i64* %12, align 8
  %170 = call i32 @spin_unlock_irqrestore(i32* %168, i64 %169)
  %171 = load i32, i32* %13, align 4
  ret i32 %171
}

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait4buf(%struct.arasan_cf_dev*) #1

declare dso_local i32 @dma_xfer(%struct.arasan_cf_dev*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
