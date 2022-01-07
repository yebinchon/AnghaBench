; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_nicstar.c_nicstar_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_nicstar.c_nicstar_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.TYPE_17__ = type { i32, i64, %struct.TYPE_27__*, %struct.TYPE_26__, %struct.TYPE_25__, i32, %struct.TYPE_24__**, i32, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_18__* }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32*, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_18__*)* }
%struct.sk_buff = type { i32 }

@cards = common dso_local global i32** null, align 8
@CFG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"nicstar%d: freeing %d huge buffers.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"nicstar%d: %d huge buffers freed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"nicstar%d: freeing %d iovec buffers.\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"nicstar%d: %d iovec buffers freed.\0A\00", align 1
@NS_FRSCD_NUM = common dso_local global i32 0, align 4
@NS_RSQSIZE = common dso_local global i64 0, align 8
@NS_RSQ_ALIGNMENT = common dso_local global i64 0, align 8
@NS_TSQSIZE = common dso_local global i64 0, align 8
@NS_TSQ_ALIGNMENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @nicstar_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicstar_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = call %struct.TYPE_17__* @pci_get_drvdata(%struct.pci_dev* %10)
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %5, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %3, align 4
  %15 = load i32**, i32*** @cards, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %217

22:                                               ; preds = %1
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 12
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %28 = icmp ne %struct.TYPE_19__* %27, null
  br i1 %28, label %29, label %50

29:                                               ; preds = %22
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 12
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %35, align 8
  %37 = icmp ne i32 (%struct.TYPE_18__*)* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %29
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 12
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %44, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 12
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  %49 = call i32 %45(%struct.TYPE_18__* %48)
  br label %50

50:                                               ; preds = %38, %29, %22
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @CFG, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 0, i64 %55)
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 12
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %58, align 8
  %60 = call i32 @atm_dev_deregister(%struct.TYPE_18__* %59)
  %61 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %62 = call i32 @pci_disable_device(%struct.pci_dev* %61)
  store i32 0, i32* %4, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 11
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @PRINTK(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %67)
  br label %69

69:                                               ; preds = %75, %50
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 1
  %73 = call %struct.sk_buff* @skb_dequeue(i32* %72)
  store %struct.sk_buff* %73, %struct.sk_buff** %6, align 8
  %74 = icmp ne %struct.sk_buff* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %76)
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %69

80:                                               ; preds = %69
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @PRINTK(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %82)
  store i32 0, i32* %4, align 4
  %84 = load i32, i32* %3, align 4
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 10
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @PRINTK(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %88)
  br label %90

90:                                               ; preds = %96, %80
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 10
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 1
  %94 = call %struct.sk_buff* @skb_dequeue(i32* %93)
  store %struct.sk_buff* %94, %struct.sk_buff** %7, align 8
  %95 = icmp ne %struct.sk_buff* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %98 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %97)
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %4, align 4
  br label %90

101:                                              ; preds = %90
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @PRINTK(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %111, %101
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 9
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = call %struct.sk_buff* @skb_dequeue(i32* %108)
  store %struct.sk_buff* %109, %struct.sk_buff** %8, align 8
  %110 = icmp ne %struct.sk_buff* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %113 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %112)
  br label %105

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %121, %114
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  %119 = call %struct.sk_buff* @skb_dequeue(i32* %118)
  store %struct.sk_buff* %119, %struct.sk_buff** %9, align 8
  %120 = icmp ne %struct.sk_buff* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %123 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %122)
  br label %115

124:                                              ; preds = %115
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @free_scq(%struct.TYPE_17__* %125, i32 %128, i32* null)
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %165, %124
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @NS_FRSCD_NUM, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %168

134:                                              ; preds = %130
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 6
  %137 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %136, align 8
  %138 = load i32, i32* %4, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %137, i64 %139
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %140, align 8
  %142 = icmp ne %struct.TYPE_24__* %141, null
  br i1 %142, label %143, label %164

143:                                              ; preds = %134
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 6
  %147 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %147, i64 %149
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 6
  %156 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %155, align 8
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %156, i64 %158
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @free_scq(%struct.TYPE_17__* %144, i32 %153, i32* %162)
  br label %164

164:                                              ; preds = %143, %134
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %4, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %4, align 4
  br label %130

168:                                              ; preds = %130
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 5
  %171 = call i32 @idr_destroy(i32* %170)
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_27__*, %struct.TYPE_27__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %174, i32 0, i32 1
  %176 = load i64, i64* @NS_RSQSIZE, align 8
  %177 = load i64, i64* @NS_RSQ_ALIGNMENT, align 8
  %178 = add nsw i64 %176, %177
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @dma_free_coherent(i32* %175, i64 %178, i32 %182, i32 %186)
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %190, i32 0, i32 1
  %192 = load i64, i64* @NS_TSQSIZE, align 8
  %193 = load i64, i64* @NS_TSQ_ALIGNMENT, align 8
  %194 = add nsw i64 %192, %193
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @dma_free_coherent(i32* %191, i64 %194, i32 %198, i32 %202)
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 2
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %210 = call i32 @free_irq(i32 %208, %struct.TYPE_17__* %209)
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @iounmap(i64 %213)
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %216 = call i32 @kfree(%struct.TYPE_17__* %215)
  br label %217

217:                                              ; preds = %168, %21
  ret void
}

declare dso_local %struct.TYPE_17__* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @atm_dev_deregister(%struct.TYPE_18__*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @PRINTK(i8*, i32, i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @free_scq(%struct.TYPE_17__*, i32, i32*) #1

declare dso_local i32 @idr_destroy(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @kfree(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
