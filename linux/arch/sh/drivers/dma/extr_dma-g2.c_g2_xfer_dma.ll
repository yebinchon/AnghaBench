; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/drivers/dma/extr_dma-g2.c_g2_xfer_dma.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/drivers/dma/extr_dma-g2.c_g2_xfer_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dma_channel = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"g2dma: unaligned source 0x%lx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"g2dma: unaligned dest 0x%lx\0A\00", align 1
@g2_dma = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [84 x i8] c"count, sar, dar, mode, ctrl, chan, xfer: %ld, 0x%08lx, 0x%08lx, %ld, %ld, %ld, %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_channel*)* @g2_xfer_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g2_xfer_dma(%struct.dma_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.dma_channel* %0, %struct.dma_channel** %3, align 8
  %5 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %6 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %9 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 31
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %15 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %180

20:                                               ; preds = %1
  %21 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %22 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 31
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %28 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %180

33:                                               ; preds = %20
  %34 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %35 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 31
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %41 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 31
  %44 = and i32 %43, -32
  %45 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %46 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %39, %33
  %48 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %49 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = add i32 %50, -1602224128
  store i32 %51, i32* %49, align 4
  %52 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %53 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %59 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %61 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %65 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @flush_icache_range(i64 %63, i32 %66)
  %68 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %69 = call i32 @g2_disable_dma(%struct.dma_channel* %68)
  %70 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %71 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 536870880
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g2_dma, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 %73, i32* %80, align 4
  %81 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %82 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 536870880
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g2_dma, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  store i32 %84, i32* %91, align 4
  %92 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %93 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, -32
  %96 = or i32 %95, -2147483648
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g2_dma, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  store i32 %96, i32* %103, align 4
  %104 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %105 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g2_dma, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 3
  store i32 %106, i32* %113, align 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g2_dma, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 4
  store i32 5, i32* %120, align 4
  %121 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %122 = call i32 @g2_enable_dma(%struct.dma_channel* %121)
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g2_dma, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g2_dma, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = load i32, i32* %4, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g2_dma, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g2_dma, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %148, align 8
  %150 = load i32, i32* %4, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g2_dma, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = load i32, i32* %4, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g2_dma, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %164, align 8
  %166 = load i32, i32* %4, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g2_dma, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %172, align 8
  %174 = load i32, i32* %4, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @pr_debug(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0), i32 %130, i32 %138, i32 %146, i32 %154, i32 %162, i32 %170, i32 %178)
  store i32 0, i32* %2, align 4
  br label %180

180:                                              ; preds = %47, %26, %13
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @flush_icache_range(i64, i32) #1

declare dso_local i32 @g2_disable_dma(%struct.dma_channel*) #1

declare dso_local i32 @g2_enable_dma(%struct.dma_channel*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
