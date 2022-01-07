; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_dma.c_omap_set_dma_src_params.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_dma.c_omap_set_dma_src_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32)*, i32 (i32, i32, i32)* }

@p = common dso_local global %struct.TYPE_2__* null, align 8
@CSDP = common dso_local global i32 0, align 4
@CCR = common dso_local global i32 0, align 4
@CSSA = common dso_local global i32 0, align 4
@CSEI = common dso_local global i32 0, align 4
@CSFI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_set_dma_src_params(i32 %0, i32 %1, i32 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = call i64 (...) @dma_omap1()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %6
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32, i32)*, i32 (i32, i32)** %19, align 8
  %21 = load i32, i32* @CSDP, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 %20(i32 %21, i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = and i32 %24, -125
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %8, align 4
  %27 = shl i32 %26, 2
  %28 = load i32, i32* %14, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %14, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %31, align 8
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @CSDP, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 %32(i32 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %17, %6
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (i32, i32)*, i32 (i32, i32)** %39, align 8
  %41 = load i32, i32* @CCR, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 %40(i32 %41, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = and i32 %44, -12289
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %9, align 4
  %47 = shl i32 %46, 12
  %48 = load i32, i32* %13, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %13, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %51, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @CCR, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 %52(i32 %53, i32 %54, i32 %55)
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* @CSSA, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 %59(i32 %61, i32 %62, i32 %63)
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @CSEI, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 %67(i32 %68, i32 %69, i32 %70)
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @CSFI, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 %74(i32 %75, i32 %76, i32 %77)
  ret void
}

declare dso_local i64 @dma_omap1(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
