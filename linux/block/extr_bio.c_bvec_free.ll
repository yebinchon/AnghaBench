; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio.c_bvec_free.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio.c_bvec_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.biovec_slab = type { i32 }
%struct.bio_vec = type { i32 }

@BVEC_POOL_NR = common dso_local global i32 0, align 4
@BVEC_POOL_MAX = common dso_local global i32 0, align 4
@bvec_slabs = common dso_local global %struct.biovec_slab* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bvec_free(i32* %0, %struct.bio_vec* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bio_vec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.biovec_slab*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.bio_vec* %1, %struct.bio_vec** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %36

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = add i32 %12, -1
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @BVEC_POOL_NR, align 4
  %16 = icmp uge i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BIO_BUG_ON(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @BVEC_POOL_MAX, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %11
  %23 = load %struct.bio_vec*, %struct.bio_vec** %5, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @mempool_free(%struct.bio_vec* %23, i32* %24)
  br label %36

26:                                               ; preds = %11
  %27 = load %struct.biovec_slab*, %struct.biovec_slab** @bvec_slabs, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.biovec_slab, %struct.biovec_slab* %27, i64 %29
  store %struct.biovec_slab* %30, %struct.biovec_slab** %7, align 8
  %31 = load %struct.biovec_slab*, %struct.biovec_slab** %7, align 8
  %32 = getelementptr inbounds %struct.biovec_slab, %struct.biovec_slab* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bio_vec*, %struct.bio_vec** %5, align 8
  %35 = call i32 @kmem_cache_free(i32 %33, %struct.bio_vec* %34)
  br label %36

36:                                               ; preds = %10, %26, %22
  ret void
}

declare dso_local i32 @BIO_BUG_ON(i32) #1

declare dso_local i32 @mempool_free(%struct.bio_vec*, i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.bio_vec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
