; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_he.c_he_init_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_he.c_he_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.he_dev = type { i32, i32*, %struct.TYPE_3__*, i32, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@CONFIG_IRQ_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to allocate irq\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ITYPE_INVALID = common dso_local global i32 0, align 4
@IRQ0_BASE = common dso_local global i32 0, align 4
@CONFIG_IRQ_THRESH = common dso_local global i32 0, align 4
@IRQ0_HEAD = common dso_local global i32 0, align 4
@IRQ_INT_A = common dso_local global i32 0, align 4
@IRQ_TYPE_LINE = common dso_local global i32 0, align 4
@IRQ0_CNTL = common dso_local global i32 0, align 4
@IRQ0_DATA = common dso_local global i32 0, align 4
@IRQ1_BASE = common dso_local global i32 0, align 4
@IRQ1_HEAD = common dso_local global i32 0, align 4
@IRQ1_CNTL = common dso_local global i32 0, align 4
@IRQ1_DATA = common dso_local global i32 0, align 4
@IRQ2_BASE = common dso_local global i32 0, align 4
@IRQ2_HEAD = common dso_local global i32 0, align 4
@IRQ2_CNTL = common dso_local global i32 0, align 4
@IRQ2_DATA = common dso_local global i32 0, align 4
@IRQ3_BASE = common dso_local global i32 0, align 4
@IRQ3_HEAD = common dso_local global i32 0, align 4
@IRQ3_CNTL = common dso_local global i32 0, align 4
@IRQ3_DATA = common dso_local global i32 0, align 4
@GRP_10_MAP = common dso_local global i32 0, align 4
@GRP_32_MAP = common dso_local global i32 0, align 4
@GRP_54_MAP = common dso_local global i32 0, align 4
@GRP_76_MAP = common dso_local global i32 0, align 4
@he_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@DEV_LABEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"irq %d already in use\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.he_dev*)* @he_init_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @he_init_irq(%struct.he_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.he_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.he_dev* %0, %struct.he_dev** %3, align 8
  %5 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %6 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %5, i32 0, i32 2
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32, i32* @CONFIG_IRQ_SIZE, align 4
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %15 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.TYPE_4__* @dma_alloc_coherent(i32* %8, i32 %13, i32* %15, i32 %16)
  %18 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %19 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %18, i32 0, i32 4
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %19, align 8
  %20 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %21 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %20, i32 0, i32 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp eq %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = call i32 (i8*, ...) @hprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %167

28:                                               ; preds = %1
  %29 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %30 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %29, i32 0, i32 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* @CONFIG_IRQ_SIZE, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = bitcast %struct.TYPE_4__* %34 to i32*
  %36 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %37 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %39 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  store i32 0, i32* %40, align 4
  %41 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %42 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %41, i32 0, i32 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %45 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %44, i32 0, i32 6
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %45, align 8
  %46 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %47 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %46, i32 0, i32 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %50 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %49, i32 0, i32 5
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %50, align 8
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %64, %28
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @CONFIG_IRQ_SIZE, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load i32, i32* @ITYPE_INVALID, align 4
  %57 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %58 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %57, i32 0, i32 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 %56, i32* %63, align 4
  br label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %51

67:                                               ; preds = %51
  %68 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %69 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %70 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @IRQ0_BASE, align 4
  %73 = call i32 @he_writel(%struct.he_dev* %68, i32 %71, i32 %72)
  %74 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %75 = load i32, i32* @CONFIG_IRQ_SIZE, align 4
  %76 = call i32 @IRQ_SIZE(i32 %75)
  %77 = load i32, i32* @CONFIG_IRQ_THRESH, align 4
  %78 = call i32 @IRQ_THRESH(i32 %77)
  %79 = or i32 %76, %78
  %80 = load i32, i32* @IRQ0_HEAD, align 4
  %81 = call i32 @he_writel(%struct.he_dev* %74, i32 %79, i32 %80)
  %82 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %83 = load i32, i32* @IRQ_INT_A, align 4
  %84 = load i32, i32* @IRQ_TYPE_LINE, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @IRQ0_CNTL, align 4
  %87 = call i32 @he_writel(%struct.he_dev* %82, i32 %85, i32 %86)
  %88 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %89 = load i32, i32* @IRQ0_DATA, align 4
  %90 = call i32 @he_writel(%struct.he_dev* %88, i32 0, i32 %89)
  %91 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %92 = load i32, i32* @IRQ1_BASE, align 4
  %93 = call i32 @he_writel(%struct.he_dev* %91, i32 0, i32 %92)
  %94 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %95 = load i32, i32* @IRQ1_HEAD, align 4
  %96 = call i32 @he_writel(%struct.he_dev* %94, i32 0, i32 %95)
  %97 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %98 = load i32, i32* @IRQ1_CNTL, align 4
  %99 = call i32 @he_writel(%struct.he_dev* %97, i32 0, i32 %98)
  %100 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %101 = load i32, i32* @IRQ1_DATA, align 4
  %102 = call i32 @he_writel(%struct.he_dev* %100, i32 0, i32 %101)
  %103 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %104 = load i32, i32* @IRQ2_BASE, align 4
  %105 = call i32 @he_writel(%struct.he_dev* %103, i32 0, i32 %104)
  %106 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %107 = load i32, i32* @IRQ2_HEAD, align 4
  %108 = call i32 @he_writel(%struct.he_dev* %106, i32 0, i32 %107)
  %109 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %110 = load i32, i32* @IRQ2_CNTL, align 4
  %111 = call i32 @he_writel(%struct.he_dev* %109, i32 0, i32 %110)
  %112 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %113 = load i32, i32* @IRQ2_DATA, align 4
  %114 = call i32 @he_writel(%struct.he_dev* %112, i32 0, i32 %113)
  %115 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %116 = load i32, i32* @IRQ3_BASE, align 4
  %117 = call i32 @he_writel(%struct.he_dev* %115, i32 0, i32 %116)
  %118 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %119 = load i32, i32* @IRQ3_HEAD, align 4
  %120 = call i32 @he_writel(%struct.he_dev* %118, i32 0, i32 %119)
  %121 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %122 = load i32, i32* @IRQ3_CNTL, align 4
  %123 = call i32 @he_writel(%struct.he_dev* %121, i32 0, i32 %122)
  %124 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %125 = load i32, i32* @IRQ3_DATA, align 4
  %126 = call i32 @he_writel(%struct.he_dev* %124, i32 0, i32 %125)
  %127 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %128 = load i32, i32* @GRP_10_MAP, align 4
  %129 = call i32 @he_writel(%struct.he_dev* %127, i32 0, i32 %128)
  %130 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %131 = load i32, i32* @GRP_32_MAP, align 4
  %132 = call i32 @he_writel(%struct.he_dev* %130, i32 0, i32 %131)
  %133 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %134 = load i32, i32* @GRP_54_MAP, align 4
  %135 = call i32 @he_writel(%struct.he_dev* %133, i32 0, i32 %134)
  %136 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %137 = load i32, i32* @GRP_76_MAP, align 4
  %138 = call i32 @he_writel(%struct.he_dev* %136, i32 0, i32 %137)
  %139 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %140 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %139, i32 0, i32 2
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @he_irq_handler, align 4
  %145 = load i32, i32* @IRQF_SHARED, align 4
  %146 = load i32, i32* @DEV_LABEL, align 4
  %147 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %148 = call i64 @request_irq(i32 %143, i32 %144, i32 %145, i32 %146, %struct.he_dev* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %67
  %151 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %152 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %151, i32 0, i32 2
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i8*, ...) @hprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %2, align 4
  br label %167

159:                                              ; preds = %67
  %160 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %161 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %160, i32 0, i32 2
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %166 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 8
  store i32 0, i32* %2, align 4
  br label %167

167:                                              ; preds = %159, %150, %24
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local %struct.TYPE_4__* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @hprintk(i8*, ...) #1

declare dso_local i32 @he_writel(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @IRQ_SIZE(i32) #1

declare dso_local i32 @IRQ_THRESH(i32) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.he_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
