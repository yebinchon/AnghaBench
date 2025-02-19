; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio.c_biovec_init_pool.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio.c_biovec_init_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.biovec_slab = type { i32 }

@bvec_slabs = common dso_local global %struct.biovec_slab* null, align 8
@BVEC_POOL_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @biovec_init_pool(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.biovec_slab*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.biovec_slab*, %struct.biovec_slab** @bvec_slabs, align 8
  %7 = load i32, i32* @BVEC_POOL_MAX, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.biovec_slab, %struct.biovec_slab* %6, i64 %8
  store %struct.biovec_slab* %9, %struct.biovec_slab** %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.biovec_slab*, %struct.biovec_slab** %5, align 8
  %13 = getelementptr inbounds %struct.biovec_slab, %struct.biovec_slab* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mempool_init_slab_pool(i32* %10, i32 %11, i32 %14)
  ret i32 %15
}

declare dso_local i32 @mempool_init_slab_pool(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
