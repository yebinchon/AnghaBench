; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_dma.c_omap_set_dma_src_burst_mode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_dma.c_omap_set_dma_src_burst_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32)*, i32 (i32, i32, i32)* }

@p = common dso_local global %struct.TYPE_2__* null, align 8
@CSDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_set_dma_src_burst_mode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (i32, i32)*, i32 (i32, i32)** %8, align 8
  %10 = load i32, i32* @CSDP, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 %9(i32 %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, -385
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %33 [
    i32 128, label %16
    i32 130, label %17
    i32 129, label %23
    i32 131, label %28
  ]

16:                                               ; preds = %2
  br label %35

17:                                               ; preds = %2
  %18 = call i32 (...) @dma_omap2plus()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 1, i32* %5, align 4
  br label %22

21:                                               ; preds = %17
  store i32 2, i32* %5, align 4
  br label %22

22:                                               ; preds = %21, %20
  br label %35

23:                                               ; preds = %2
  %24 = call i32 (...) @dma_omap2plus()
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 2, i32* %5, align 4
  br label %35

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %2, %27
  %29 = call i32 (...) @dma_omap2plus()
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 3, i32* %5, align 4
  br label %35

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %2, %32
  %34 = call i32 (...) @BUG()
  br label %35

35:                                               ; preds = %33, %31, %26, %22, %16
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 %36, 7
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @CSDP, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 %42(i32 %43, i32 %44, i32 %45)
  ret void
}

declare dso_local i32 @dma_omap2plus(...) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
