; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_dma.c_omap_get_dma_dst_pos.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_dma.c_omap_get_dma_dst_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32)* }

@p = common dso_local global %struct.TYPE_2__* null, align 8
@CPC = common dso_local global i32 0, align 4
@CDAC = common dso_local global i32 0, align 4
@CDSA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_get_dma_dst_pos(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = call i64 (...) @dma_omap15xx()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (i32, i32)*, i32 (i32, i32)** %8, align 8
  %10 = load i32, i32* @CPC, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 %9(i32 %10, i32 %11)
  store i32 %12, i32* %3, align 4
  br label %20

13:                                               ; preds = %1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (i32, i32)*, i32 (i32, i32)** %15, align 8
  %17 = load i32, i32* @CDAC, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 %16(i32 %17, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %13, %6
  %21 = call i64 (...) @dma_omap15xx()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %23
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (i32, i32)*, i32 (i32, i32)** %28, align 8
  %30 = load i32, i32* @CDAC, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i32 %29(i32 %30, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %26
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (i32, i32)*, i32 (i32, i32)** %41, align 8
  %43 = load i32, i32* @CDSA, align 4
  %44 = load i32, i32* %2, align 4
  %45 = call i32 %42(i32 %43, i32 %44)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %39, %26
  br label %47

47:                                               ; preds = %46, %23, %20
  %48 = call i64 (...) @dma_omap1()
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (i32, i32)*, i32 (i32, i32)** %52, align 8
  %54 = load i32, i32* @CDSA, align 4
  %55 = load i32, i32* %2, align 4
  %56 = call i32 %53(i32 %54, i32 %55)
  %57 = and i32 %56, -65536
  %58 = load i32, i32* %3, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %50, %47
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @dma_omap15xx(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @dma_omap1(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
