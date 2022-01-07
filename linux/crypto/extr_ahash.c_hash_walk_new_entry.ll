; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ahash.c_hash_walk_new_entry.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ahash.c_hash_walk_new_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_hash_walk = type { i32, i64, i64, %struct.scatterlist*, i64 }
%struct.scatterlist = type { i32, i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_hash_walk*)* @hash_walk_new_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_walk_new_entry(%struct.crypto_hash_walk* %0) #0 {
  %2 = alloca %struct.crypto_hash_walk*, align 8
  %3 = alloca %struct.scatterlist*, align 8
  store %struct.crypto_hash_walk* %0, %struct.crypto_hash_walk** %2, align 8
  %4 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %2, align 8
  %5 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %4, i32 0, i32 3
  %6 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  store %struct.scatterlist* %6, %struct.scatterlist** %3, align 8
  %7 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %8 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %2, align 8
  %11 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %2, align 8
  %13 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %12, i32 0, i32 3
  %14 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %15 = call i64 @sg_page(%struct.scatterlist* %14)
  %16 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %2, align 8
  %17 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @PAGE_SHIFT, align 4
  %20 = ashr i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %15, %21
  %23 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %2, align 8
  %24 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %23, i32 0, i32 4
  store i64 %22, i64* %24, align 8
  %25 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %2, align 8
  %26 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @offset_in_page(i32 %27)
  %29 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %2, align 8
  %30 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %32 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %2, align 8
  %35 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %2, align 8
  %37 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %2, align 8
  %40 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %38, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %1
  %44 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %2, align 8
  %45 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %2, align 8
  %48 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %43, %1
  %50 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %2, align 8
  %51 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %2, align 8
  %54 = getelementptr inbounds %struct.crypto_hash_walk, %struct.crypto_hash_walk* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load %struct.crypto_hash_walk*, %struct.crypto_hash_walk** %2, align 8
  %58 = call i32 @hash_walk_next(%struct.crypto_hash_walk* %57)
  ret i32 %58
}

declare dso_local i64 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @offset_in_page(i32) #1

declare dso_local i32 @hash_walk_next(%struct.crypto_hash_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
