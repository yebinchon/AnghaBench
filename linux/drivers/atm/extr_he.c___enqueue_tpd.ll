; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_he.c___enqueue_tpd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_he.c___enqueue_tpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.he_dev = type { %struct.he_tpdrq*, i32, i32, %struct.TYPE_5__*, %struct.he_tpdrq*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.he_tpdrq = type { i32, i32 }
%struct.he_tpd = type { i32, i32, %struct.TYPE_8__*, i64, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 (%struct.TYPE_8__*, i64)* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64 }

@.str = private unnamed_addr constant [36 x i8] c"tpdrq %p cid 0x%x -> tpdrq_tail %p\0A\00", align 1
@TPDRQ_B_H = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"tpdrq full (cid 0x%x)\0A\00", align 1
@TPD_MAXIOV = common dso_local global i32 0, align 4
@TPD_LEN_MASK = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TPDRQ_T = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.he_dev*, %struct.he_tpd*, i32)* @__enqueue_tpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__enqueue_tpd(%struct.he_dev* %0, %struct.he_tpd* %1, i32 %2) #0 {
  %4 = alloca %struct.he_dev*, align 8
  %5 = alloca %struct.he_tpd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.he_tpdrq*, align 8
  %8 = alloca i32, align 4
  store %struct.he_dev* %0, %struct.he_dev** %4, align 8
  store %struct.he_tpd* %1, %struct.he_tpd** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.he_tpd*, %struct.he_tpd** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %12 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %11, i32 0, i32 0
  %13 = load %struct.he_tpdrq*, %struct.he_tpdrq** %12, align 8
  %14 = call i32 @HPRINTK(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.he_tpd* %9, i32 %10, %struct.he_tpdrq* %13)
  %15 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %16 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %19 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %18, i32 0, i32 0
  %20 = load %struct.he_tpdrq*, %struct.he_tpdrq** %19, align 8
  %21 = getelementptr inbounds %struct.he_tpdrq, %struct.he_tpdrq* %20, i64 1
  %22 = call i64 @TPDRQ_MASK(%struct.he_tpdrq* %21)
  %23 = or i64 %17, %22
  %24 = inttoptr i64 %23 to %struct.he_tpdrq*
  store %struct.he_tpdrq* %24, %struct.he_tpdrq** %7, align 8
  %25 = load %struct.he_tpdrq*, %struct.he_tpdrq** %7, align 8
  %26 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %27 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %26, i32 0, i32 4
  %28 = load %struct.he_tpdrq*, %struct.he_tpdrq** %27, align 8
  %29 = icmp eq %struct.he_tpdrq* %25, %28
  br i1 %29, label %30, label %142

30:                                               ; preds = %3
  %31 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %32 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %35 = load i32, i32* @TPDRQ_B_H, align 4
  %36 = call %struct.he_tpdrq* @he_readl(%struct.he_dev* %34, i32 %35)
  %37 = call i64 @TPDRQ_MASK(%struct.he_tpdrq* %36)
  %38 = or i64 %33, %37
  %39 = inttoptr i64 %38 to %struct.he_tpdrq*
  %40 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %41 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %40, i32 0, i32 4
  store %struct.he_tpdrq* %39, %struct.he_tpdrq** %41, align 8
  %42 = load %struct.he_tpdrq*, %struct.he_tpdrq** %7, align 8
  %43 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %44 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %43, i32 0, i32 4
  %45 = load %struct.he_tpdrq*, %struct.he_tpdrq** %44, align 8
  %46 = icmp eq %struct.he_tpdrq* %42, %45
  br i1 %46, label %47, label %141

47:                                               ; preds = %30
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @hprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %90, %47
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @TPD_MAXIOV, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %93

54:                                               ; preds = %50
  %55 = load %struct.he_tpd*, %struct.he_tpd** %5, align 8
  %56 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %55, i32 0, i32 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %54
  %65 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %66 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %65, i32 0, i32 3
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.he_tpd*, %struct.he_tpd** %5, align 8
  %70 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %69, i32 0, i32 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.he_tpd*, %struct.he_tpd** %5, align 8
  %78 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %77, i32 0, i32 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @TPD_LEN_MASK, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* @DMA_TO_DEVICE, align 4
  %88 = call i32 @dma_unmap_single(i32* %68, i64 %76, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %64, %54
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %50

93:                                               ; preds = %50
  %94 = load %struct.he_tpd*, %struct.he_tpd** %5, align 8
  %95 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %131

98:                                               ; preds = %93
  %99 = load %struct.he_tpd*, %struct.he_tpd** %5, align 8
  %100 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %99, i32 0, i32 2
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32 (%struct.TYPE_8__*, i64)*, i32 (%struct.TYPE_8__*, i64)** %102, align 8
  %104 = icmp ne i32 (%struct.TYPE_8__*, i64)* %103, null
  br i1 %104, label %105, label %118

105:                                              ; preds = %98
  %106 = load %struct.he_tpd*, %struct.he_tpd** %5, align 8
  %107 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %106, i32 0, i32 2
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i32 (%struct.TYPE_8__*, i64)*, i32 (%struct.TYPE_8__*, i64)** %109, align 8
  %111 = load %struct.he_tpd*, %struct.he_tpd** %5, align 8
  %112 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %111, i32 0, i32 2
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = load %struct.he_tpd*, %struct.he_tpd** %5, align 8
  %115 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = call i32 %110(%struct.TYPE_8__* %113, i64 %116)
  br label %123

118:                                              ; preds = %98
  %119 = load %struct.he_tpd*, %struct.he_tpd** %5, align 8
  %120 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @dev_kfree_skb_any(i64 %121)
  br label %123

123:                                              ; preds = %118, %105
  %124 = load %struct.he_tpd*, %struct.he_tpd** %5, align 8
  %125 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %124, i32 0, i32 2
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = call i32 @atomic_inc(i32* %129)
  br label %131

131:                                              ; preds = %123, %93
  %132 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %133 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.he_tpd*, %struct.he_tpd** %5, align 8
  %136 = load %struct.he_tpd*, %struct.he_tpd** %5, align 8
  %137 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @TPD_ADDR(i32 %138)
  %140 = call i32 @dma_pool_free(i32 %134, %struct.he_tpd* %135, i32 %139)
  br label %175

141:                                              ; preds = %30
  br label %142

142:                                              ; preds = %141, %3
  %143 = load %struct.he_tpd*, %struct.he_tpd** %5, align 8
  %144 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %143, i32 0, i32 1
  %145 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %146 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %145, i32 0, i32 1
  %147 = call i32 @list_add_tail(i32* %144, i32* %146)
  %148 = load %struct.he_tpd*, %struct.he_tpd** %5, align 8
  %149 = getelementptr inbounds %struct.he_tpd, %struct.he_tpd* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @TPD_ADDR(i32 %150)
  %152 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %153 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %152, i32 0, i32 0
  %154 = load %struct.he_tpdrq*, %struct.he_tpdrq** %153, align 8
  %155 = getelementptr inbounds %struct.he_tpdrq, %struct.he_tpdrq* %154, i32 0, i32 1
  store i32 %151, i32* %155, align 4
  %156 = load i32, i32* %6, align 4
  %157 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %158 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %157, i32 0, i32 0
  %159 = load %struct.he_tpdrq*, %struct.he_tpdrq** %158, align 8
  %160 = getelementptr inbounds %struct.he_tpdrq, %struct.he_tpdrq* %159, i32 0, i32 0
  store i32 %156, i32* %160, align 4
  %161 = call i32 (...) @wmb()
  %162 = load %struct.he_tpdrq*, %struct.he_tpdrq** %7, align 8
  %163 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %164 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %163, i32 0, i32 0
  store %struct.he_tpdrq* %162, %struct.he_tpdrq** %164, align 8
  %165 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %166 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %167 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %166, i32 0, i32 0
  %168 = load %struct.he_tpdrq*, %struct.he_tpdrq** %167, align 8
  %169 = call i64 @TPDRQ_MASK(%struct.he_tpdrq* %168)
  %170 = load i32, i32* @TPDRQ_T, align 4
  %171 = call i32 @he_writel(%struct.he_dev* %165, i64 %169, i32 %170)
  %172 = load %struct.he_dev*, %struct.he_dev** %4, align 8
  %173 = load i32, i32* @TPDRQ_T, align 4
  %174 = call %struct.he_tpdrq* @he_readl(%struct.he_dev* %172, i32 %173)
  br label %175

175:                                              ; preds = %142, %131
  ret void
}

declare dso_local i32 @HPRINTK(i8*, %struct.he_tpd*, i32, %struct.he_tpdrq*) #1

declare dso_local i64 @TPDRQ_MASK(%struct.he_tpdrq*) #1

declare dso_local %struct.he_tpdrq* @he_readl(%struct.he_dev*, i32) #1

declare dso_local i32 @hprintk(i8*, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @dma_pool_free(i32, %struct.he_tpd*, i32) #1

declare dso_local i32 @TPD_ADDR(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @he_writel(%struct.he_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
