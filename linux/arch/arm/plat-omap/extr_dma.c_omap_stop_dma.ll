; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_dma.c_omap_stop_dma.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_dma.c_omap_stop_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32, i32)*, i32 (i32, i32, i32)* }
%struct.TYPE_4__ = type { i32, i32 }

@p = common dso_local global %struct.TYPE_3__* null, align 8
@CCR = common dso_local global i32 0, align 4
@DMA_ERRATA_i541 = common dso_local global i32 0, align 4
@OMAP_DMA_CCR_SEL_SRC_DST_SYNC = common dso_local global i32 0, align 4
@OCP_SYSCONFIG = common dso_local global i32 0, align 4
@DMA_SYSCONFIG_MIDLEMODE_MASK = common dso_local global i32 0, align 4
@DMA_IDLEMODE_NO_IDLE = common dso_local global i32 0, align 4
@OMAP_DMA_CCR_EN = common dso_local global i32 0, align 4
@OMAP_DMA_CCR_RD_ACTIVE = common dso_local global i32 0, align 4
@OMAP_DMA_CCR_WR_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"DMA drain did not complete on lch %d\0A\00", align 1
@dma_chan = common dso_local global %struct.TYPE_4__* null, align 8
@MAX_LOGICAL_DMA_CH_COUNT = common dso_local global i32 0, align 4
@OMAP_DMA_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_stop_dma(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @omap_disable_channel_irq(i32 %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @p, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32 (i32, i32)*, i32 (i32, i32)** %13, align 8
  %15 = load i32, i32* @CCR, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 %14(i32 %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @DMA_ERRATA_i541, align 4
  %19 = call i64 @IS_DMA_ERRATA(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %107

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @OMAP_DMA_CCR_SEL_SRC_DST_SYNC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %107

26:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @p, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (i32, i32)*, i32 (i32, i32)** %28, align 8
  %30 = load i32, i32* @OCP_SYSCONFIG, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i32 %29(i32 %30, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @DMA_SYSCONFIG_MIDLEMODE_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @DMA_IDLEMODE_NO_IDLE, align 4
  %39 = call i32 @DMA_SYSCONFIG_MIDLEMODE(i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @p, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @OCP_SYSCONFIG, align 4
  %47 = call i32 %44(i32 %45, i32 %46, i32 0)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @p, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32 (i32, i32)*, i32 (i32, i32)** %49, align 8
  %51 = load i32, i32* @CCR, align 4
  %52 = load i32, i32* %2, align 4
  %53 = call i32 %50(i32 %51, i32 %52)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* @OMAP_DMA_CCR_EN, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %3, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %3, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @p, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @CCR, align 4
  %63 = load i32, i32* %2, align 4
  %64 = call i32 %60(i32 %61, i32 %62, i32 %63)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @p, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32 (i32, i32)*, i32 (i32, i32)** %66, align 8
  %68 = load i32, i32* @CCR, align 4
  %69 = load i32, i32* %2, align 4
  %70 = call i32 %67(i32 %68, i32 %69)
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %83, %26
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 100
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @OMAP_DMA_CCR_RD_ACTIVE, align 4
  %77 = load i32, i32* @OMAP_DMA_CCR_WR_ACTIVE, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %75, %78
  %80 = icmp ne i32 %79, 0
  br label %81

81:                                               ; preds = %74, %71
  %82 = phi i1 [ false, %71 ], [ %80, %74 ]
  br i1 %82, label %83, label %93

83:                                               ; preds = %81
  %84 = call i32 @udelay(i32 5)
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** @p, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32 (i32, i32)*, i32 (i32, i32)** %88, align 8
  %90 = load i32, i32* @CCR, align 4
  %91 = load i32, i32* %2, align 4
  %92 = call i32 %89(i32 %90, i32 %91)
  store i32 %92, i32* %3, align 4
  br label %71

93:                                               ; preds = %81
  %94 = load i32, i32* %4, align 4
  %95 = icmp sge i32 %94, 100
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %2, align 4
  %98 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %96, %93
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** @p, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @OCP_SYSCONFIG, align 4
  %105 = load i32, i32* %2, align 4
  %106 = call i32 %102(i32 %103, i32 %104, i32 %105)
  br label %119

107:                                              ; preds = %21, %1
  %108 = load i32, i32* @OMAP_DMA_CCR_EN, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %3, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %3, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** @p, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %113, align 8
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* @CCR, align 4
  %117 = load i32, i32* %2, align 4
  %118 = call i32 %114(i32 %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %107, %99
  %120 = call i32 (...) @mb()
  %121 = call i32 (...) @omap_dma_in_1510_mode()
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %164, label %123

123:                                              ; preds = %119
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dma_chan, align 8
  %125 = load i32, i32* %2, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, -1
  br i1 %130, label %131, label %164

131:                                              ; preds = %123
  %132 = load i32, i32* %2, align 4
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* @MAX_LOGICAL_DMA_CH_COUNT, align 4
  %134 = zext i32 %133 to i64
  %135 = call i8* @llvm.stacksave()
  store i8* %135, i8** %8, align 8
  %136 = alloca i8, i64 %134, align 16
  store i64 %134, i64* %9, align 8
  %137 = trunc i64 %134 to i32
  %138 = call i32 @memset(i8* %136, i32 0, i32 %137)
  br label %139

139:                                              ; preds = %159, %131
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %136, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = icmp ne i8 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %162

146:                                              ; preds = %139
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %136, i64 %148
  store i8 1, i8* %149, align 1
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @disable_lnk(i32 %150)
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dma_chan, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %6, align 4
  store i32 %158, i32* %7, align 4
  br label %159

159:                                              ; preds = %146
  %160 = load i32, i32* %6, align 4
  %161 = icmp ne i32 %160, -1
  br i1 %161, label %139, label %162

162:                                              ; preds = %159, %145
  %163 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %163)
  br label %164

164:                                              ; preds = %162, %123, %119
  %165 = load i32, i32* @OMAP_DMA_ACTIVE, align 4
  %166 = xor i32 %165, -1
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dma_chan, align 8
  %168 = load i32, i32* %2, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, %166
  store i32 %173, i32* %171, align 4
  ret void
}

declare dso_local i32 @omap_disable_channel_irq(i32) #1

declare dso_local i64 @IS_DMA_ERRATA(i32) #1

declare dso_local i32 @DMA_SYSCONFIG_MIDLEMODE(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @omap_dma_in_1510_mode(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @disable_lnk(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
