; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-rpc/extr_dma.c_iomd_get_next_sg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-rpc/extr_dma.c_iomd_get_next_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iomd_dma = type { i64, i64, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@TRANSFER_SIZE = common dso_local global i64 0, align 8
@DMA_END_L = common dso_local global i64 0, align 8
@DMA_END_S = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iomd_dma*)* @iomd_get_next_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iomd_get_next_sg(%struct.iomd_dma* %0) #0 {
  %2 = alloca %struct.iomd_dma*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.iomd_dma* %0, %struct.iomd_dma** %2, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.iomd_dma*, %struct.iomd_dma** %2, align 8
  %7 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %112

11:                                               ; preds = %1
  %12 = load %struct.iomd_dma*, %struct.iomd_dma** %2, align 8
  %13 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.iomd_dma*, %struct.iomd_dma** %2, align 8
  %16 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.iomd_dma*, %struct.iomd_dma** %2, align 8
  %18 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PAGE_MASK, align 8
  %21 = xor i64 %20, -1
  %22 = and i64 %19, %21
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.iomd_dma*, %struct.iomd_dma** %2, align 8
  %25 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %23, %26
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @PAGE_SIZE, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %11
  %32 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %32, i64* %3, align 8
  br label %33

33:                                               ; preds = %31, %11
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @TRANSFER_SIZE, align 8
  %36 = add i64 %34, %35
  %37 = load i64, i64* %3, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i64, i64* @DMA_END_L, align 8
  %41 = load i64, i64* %5, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %39, %33
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @TRANSFER_SIZE, align 8
  %46 = sub i64 %44, %45
  %47 = load %struct.iomd_dma*, %struct.iomd_dma** %2, align 8
  %48 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %47, i32 0, i32 3
  store i64 %46, i64* %48, align 8
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* %4, align 8
  %51 = sub i64 %49, %50
  %52 = load %struct.iomd_dma*, %struct.iomd_dma** %2, align 8
  %53 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %54, %51
  store i64 %55, i64* %53, align 8
  %56 = load i64, i64* %3, align 8
  %57 = load i64, i64* %4, align 8
  %58 = sub i64 %56, %57
  %59 = load %struct.iomd_dma*, %struct.iomd_dma** %2, align 8
  %60 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, %58
  store i64 %62, i64* %60, align 8
  %63 = load %struct.iomd_dma*, %struct.iomd_dma** %2, align 8
  %64 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %111

67:                                               ; preds = %43
  %68 = load %struct.iomd_dma*, %struct.iomd_dma** %2, align 8
  %69 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %103

73:                                               ; preds = %67
  %74 = load %struct.iomd_dma*, %struct.iomd_dma** %2, align 8
  %75 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = call %struct.TYPE_5__* @sg_next(%struct.TYPE_5__* %77)
  %79 = load %struct.iomd_dma*, %struct.iomd_dma** %2, align 8
  %80 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store %struct.TYPE_5__* %78, %struct.TYPE_5__** %81, align 8
  %82 = load %struct.iomd_dma*, %struct.iomd_dma** %2, align 8
  %83 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.iomd_dma*, %struct.iomd_dma** %2, align 8
  %89 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.iomd_dma*, %struct.iomd_dma** %2, align 8
  %91 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.iomd_dma*, %struct.iomd_dma** %2, align 8
  %97 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load %struct.iomd_dma*, %struct.iomd_dma** %2, align 8
  %99 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %100, align 8
  br label %110

103:                                              ; preds = %67
  %104 = load %struct.iomd_dma*, %struct.iomd_dma** %2, align 8
  %105 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %106, align 8
  %107 = load i64, i64* @DMA_END_S, align 8
  %108 = load i64, i64* %5, align 8
  %109 = or i64 %108, %107
  store i64 %109, i64* %5, align 8
  br label %110

110:                                              ; preds = %103, %73
  br label %111

111:                                              ; preds = %110, %43
  br label %120

112:                                              ; preds = %1
  %113 = load i64, i64* @DMA_END_S, align 8
  %114 = load i64, i64* @DMA_END_L, align 8
  %115 = or i64 %113, %114
  store i64 %115, i64* %5, align 8
  %116 = load %struct.iomd_dma*, %struct.iomd_dma** %2, align 8
  %117 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %116, i32 0, i32 0
  store i64 0, i64* %117, align 8
  %118 = load %struct.iomd_dma*, %struct.iomd_dma** %2, align 8
  %119 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %118, i32 0, i32 3
  store i64 0, i64* %119, align 8
  br label %120

120:                                              ; preds = %112, %111
  %121 = load i64, i64* %5, align 8
  %122 = load %struct.iomd_dma*, %struct.iomd_dma** %2, align 8
  %123 = getelementptr inbounds %struct.iomd_dma, %struct.iomd_dma* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = or i64 %124, %121
  store i64 %125, i64* %123, align 8
  ret void
}

declare dso_local %struct.TYPE_5__* @sg_next(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
