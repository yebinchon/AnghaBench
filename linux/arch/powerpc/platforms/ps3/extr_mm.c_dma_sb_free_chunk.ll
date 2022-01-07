; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/ps3/extr_mm.c_dma_sb_free_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/ps3/extr_mm.c_dma_sb_free_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chunk = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chunk*)* @dma_sb_free_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_sb_free_chunk(%struct.dma_chunk* %0) #0 {
  %2 = alloca %struct.dma_chunk*, align 8
  %3 = alloca i32, align 4
  store %struct.dma_chunk* %0, %struct.dma_chunk** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.dma_chunk*, %struct.dma_chunk** %2, align 8
  %5 = getelementptr inbounds %struct.dma_chunk, %struct.dma_chunk* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %1
  %9 = load %struct.dma_chunk*, %struct.dma_chunk** %2, align 8
  %10 = getelementptr inbounds %struct.dma_chunk, %struct.dma_chunk* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dma_chunk*, %struct.dma_chunk** %2, align 8
  %17 = getelementptr inbounds %struct.dma_chunk, %struct.dma_chunk* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dma_chunk*, %struct.dma_chunk** %2, align 8
  %24 = getelementptr inbounds %struct.dma_chunk, %struct.dma_chunk* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.dma_chunk*, %struct.dma_chunk** %2, align 8
  %27 = getelementptr inbounds %struct.dma_chunk, %struct.dma_chunk* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @lv1_unmap_device_dma_region(i32 %15, i32 %22, i64 %25, i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @BUG_ON(i32 %30)
  br label %32

32:                                               ; preds = %8, %1
  %33 = load %struct.dma_chunk*, %struct.dma_chunk** %2, align 8
  %34 = call i32 @kfree(%struct.dma_chunk* %33)
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @lv1_unmap_device_dma_region(i32, i32, i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kfree(%struct.dma_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
