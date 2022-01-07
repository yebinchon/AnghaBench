; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_dma.c_omap_set_dma_transfer_params.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_dma.c_omap_set_dma_transfer_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32)*, i32 (i32, i32, i32)* }

@p = common dso_local global %struct.TYPE_2__* null, align 8
@CSDP = common dso_local global i32 0, align 4
@CCR = common dso_local global i32 0, align 4
@OMAP_DMA_SYNC_FRAME = common dso_local global i32 0, align 4
@CCR2 = common dso_local global i32 0, align 4
@OMAP_DMA_SYNC_BLOCK = common dso_local global i32 0, align 4
@OMAP_DMA_DST_SYNC_PREFETCH = common dso_local global i32 0, align 4
@CEN = common dso_local global i32 0, align 4
@CFN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_set_dma_transfer_params(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32, i32)*, i32 (i32, i32)** %19, align 8
  %21 = load i32, i32* @CSDP, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 %20(i32 %21, i32 %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = and i32 %24, -4
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %15, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %15, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %30, align 8
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* @CSDP, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 %31(i32 %32, i32 %33, i32 %34)
  %36 = call i64 (...) @dma_omap1()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %83

38:                                               ; preds = %7
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (i32, i32)*, i32 (i32, i32)** %40, align 8
  %42 = load i32, i32* @CCR, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 %41(i32 %42, i32 %43)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = and i32 %45, -33
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @OMAP_DMA_SYNC_FRAME, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load i32, i32* %16, align 4
  %52 = or i32 %51, 32
  store i32 %52, i32* %16, align 4
  br label %53

53:                                               ; preds = %50, %38
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %55, align 8
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* @CCR, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 %56(i32 %57, i32 %58, i32 %59)
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32 (i32, i32)*, i32 (i32, i32)** %62, align 8
  %64 = load i32, i32* @CCR2, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 %63(i32 %64, i32 %65)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = and i32 %67, -5
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @OMAP_DMA_SYNC_BLOCK, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %53
  %73 = load i32, i32* %16, align 4
  %74 = or i32 %73, 4
  store i32 %74, i32* %16, align 4
  br label %75

75:                                               ; preds = %72, %53
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %77, align 8
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* @CCR2, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 %78(i32 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %75, %7
  %84 = call i64 (...) @dma_omap2plus()
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %155

86:                                               ; preds = %83
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %155

89:                                               ; preds = %86
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32 (i32, i32)*, i32 (i32, i32)** %91, align 8
  %93 = load i32, i32* @CCR, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 %92(i32 %93, i32 %94)
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* %17, align 4
  %97 = and i32 %96, -9961504
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %13, align 4
  %99 = and i32 %98, -32
  %100 = shl i32 %99, 14
  %101 = load i32, i32* %17, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %13, align 4
  %104 = and i32 %103, 31
  %105 = load i32, i32* %17, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %17, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @OMAP_DMA_SYNC_FRAME, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %89
  %112 = load i32, i32* %17, align 4
  %113 = or i32 %112, 32
  store i32 %113, i32* %17, align 4
  br label %117

114:                                              ; preds = %89
  %115 = load i32, i32* %17, align 4
  %116 = and i32 %115, -33
  store i32 %116, i32* %17, align 4
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @OMAP_DMA_SYNC_BLOCK, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32, i32* %17, align 4
  %124 = or i32 %123, 262144
  store i32 %124, i32* %17, align 4
  br label %128

125:                                              ; preds = %117
  %126 = load i32, i32* %17, align 4
  %127 = and i32 %126, -262145
  store i32 %127, i32* %17, align 4
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* @OMAP_DMA_DST_SYNC_PREFETCH, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load i32, i32* %17, align 4
  %134 = and i32 %133, -16777217
  store i32 %134, i32* %17, align 4
  %135 = load i32, i32* %17, align 4
  %136 = or i32 %135, 8388608
  store i32 %136, i32* %17, align 4
  br label %147

137:                                              ; preds = %128
  %138 = load i32, i32* %14, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32, i32* %17, align 4
  %142 = or i32 %141, 16777216
  store i32 %142, i32* %17, align 4
  br label %146

143:                                              ; preds = %137
  %144 = load i32, i32* %17, align 4
  %145 = and i32 %144, -16777217
  store i32 %145, i32* %17, align 4
  br label %146

146:                                              ; preds = %143, %140
  br label %147

147:                                              ; preds = %146, %132
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  %150 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %149, align 8
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* @CCR, align 4
  %153 = load i32, i32* %8, align 4
  %154 = call i32 %150(i32 %151, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %147, %86, %83
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* @CEN, align 4
  %161 = load i32, i32* %8, align 4
  %162 = call i32 %158(i32 %159, i32 %160, i32 %161)
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* @CFN, align 4
  %168 = load i32, i32* %8, align 4
  %169 = call i32 %165(i32 %166, i32 %167, i32 %168)
  ret void
}

declare dso_local i64 @dma_omap1(...) #1

declare dso_local i64 @dma_omap2plus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
