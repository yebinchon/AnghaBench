; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_deinit_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_deinit_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32, i32, i64, i64*, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__, i32, i64, i32, i32, i32, %struct.TYPE_5__*, i64, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.sk_buff** }
%struct.sk_buff = type { i64 }

@IDT77252_BIT_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: SAR not yet initialized.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"idt77252: deinitialize card %u\0A\00", align 1
@SAR_REG_CFG = common dso_local global i32 0, align 4
@FBQ_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"%s: Release RSQ ...\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%s: Release TSQ ...\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"idt77252: Release IRQ.\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"%s: Card deinitialized.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idt77252_dev*)* @deinit_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deinit_card(%struct.idt77252_dev* %0) #0 {
  %2 = alloca %struct.idt77252_dev*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %2, align 8
  %6 = load i32, i32* @IDT77252_BIT_INIT, align 4
  %7 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %8 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %7, i32 0, i32 1
  %9 = call i32 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %13 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %200

16:                                               ; preds = %1
  %17 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %18 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %17, i32 0, i32 14
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i8*, ...) @DIPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @SAR_REG_CFG, align 4
  %22 = call i32 @writel(i32 0, i32 %21)
  %23 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %24 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %23, i32 0, i32 13
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %29 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %28, i32 0, i32 13
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @atm_dev_deregister(i64 %30)
  br label %32

32:                                               ; preds = %27, %16
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %89, %32
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %92

36:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %85, %36
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @FBQ_SIZE, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %88

41:                                               ; preds = %37
  %42 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %43 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %42, i32 0, i32 12
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.sk_buff**, %struct.sk_buff*** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %49, i64 %51
  %53 = load %struct.sk_buff*, %struct.sk_buff** %52, align 8
  store %struct.sk_buff* %53, %struct.sk_buff** %3, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %55 = icmp ne %struct.sk_buff* %54, null
  br i1 %55, label %56, label %84

56:                                               ; preds = %41
  %57 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %58 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %57, i32 0, i32 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %62 = call i32 @IDT77252_PRV_PADDR(%struct.sk_buff* %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %64 = call i64 @skb_end_pointer(%struct.sk_buff* %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  %69 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %70 = call i32 @dma_unmap_single(i32* %60, i32 %62, i64 %68, i32 %69)
  %71 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %72 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %71, i32 0, i32 12
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.sk_buff**, %struct.sk_buff*** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %78, i64 %80
  store %struct.sk_buff* null, %struct.sk_buff** %81, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %83 = call i32 @dev_kfree_skb(%struct.sk_buff* %82)
  br label %84

84:                                               ; preds = %56, %41
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %37

88:                                               ; preds = %37
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %33

92:                                               ; preds = %33
  %93 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %94 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %93, i32 0, i32 11
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @vfree(i32 %95)
  %97 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %98 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %97, i32 0, i32 10
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @vfree(i32 %99)
  %101 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %102 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %101, i32 0, i32 9
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @vfree(i32 %103)
  %105 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %106 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %105, i32 0, i32 8
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %92
  %110 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %111 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %110, i32 0, i32 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %115 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %114, i32 0, i32 8
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %118 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @dma_free_coherent(i32* %113, i32 8, i64 %116, i32 %119)
  br label %121

121:                                              ; preds = %109, %92
  %122 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %123 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %122, i32 0, i32 6
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %121
  %128 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %129 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 (i8*, ...) @DIPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  %132 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %133 = call i32 @deinit_rsq(%struct.idt77252_dev* %132)
  br label %134

134:                                              ; preds = %127, %121
  %135 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %136 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %134
  %141 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %142 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (i8*, ...) @DIPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %143)
  %145 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %146 = call i32 @deinit_tsq(%struct.idt77252_dev* %145)
  br label %147

147:                                              ; preds = %140, %134
  %148 = call i32 (i8*, ...) @DIPRINTK(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %149 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %150 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %149, i32 0, i32 4
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %155 = call i32 @free_irq(i32 %153, %struct.idt77252_dev* %154)
  store i32 0, i32* %4, align 4
  br label %156

156:                                              ; preds = %178, %147
  %157 = load i32, i32* %4, align 4
  %158 = icmp slt i32 %157, 4
  br i1 %158, label %159, label %181

159:                                              ; preds = %156
  %160 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %161 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %160, i32 0, i32 3
  %162 = load i64*, i64** %161, align 8
  %163 = load i32, i32* %4, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %159
  %169 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %170 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %169, i32 0, i32 3
  %171 = load i64*, i64** %170, align 8
  %172 = load i32, i32* %4, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @iounmap(i64 %175)
  br label %177

177:                                              ; preds = %168, %159
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %4, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %4, align 4
  br label %156

181:                                              ; preds = %156
  %182 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %183 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %188 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @iounmap(i64 %189)
  br label %191

191:                                              ; preds = %186, %181
  %192 = load i32, i32* @IDT77252_BIT_INIT, align 4
  %193 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %194 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %193, i32 0, i32 1
  %195 = call i32 @clear_bit(i32 %192, i32* %194)
  %196 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %197 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 (i8*, ...) @DIPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %198)
  br label %200

200:                                              ; preds = %191, %11
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @DIPRINTK(i8*, ...) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @atm_dev_deregister(i64) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i64, i32) #1

declare dso_local i32 @IDT77252_PRV_PADDR(%struct.sk_buff*) #1

declare dso_local i64 @skb_end_pointer(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

declare dso_local i32 @deinit_rsq(%struct.idt77252_dev*) #1

declare dso_local i32 @deinit_tsq(%struct.idt77252_dev*) #1

declare dso_local i32 @free_irq(i32, %struct.idt77252_dev*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
