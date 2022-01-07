; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_shash.c_shash_ahash_digest.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_shash.c_shash_ahash_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32, i32 }
%struct.shash_desc = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shash_ahash_digest(%struct.ahash_request* %0, %struct.shash_desc* %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store %struct.shash_desc* %1, %struct.shash_desc** %4, align 8
  %10 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %11 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %2
  %16 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %17 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %16, i32 0, i32 2
  %18 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  store %struct.scatterlist* %18, %struct.scatterlist** %6, align 8
  %19 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %20 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %24 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* @PAGE_SIZE, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* %7, align 4
  %29 = sub i32 %27, %28
  %30 = call i32 @min(i32 %25, i32 %29)
  %31 = icmp ule i32 %22, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %15
  %33 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %34 = call i32 @sg_page(%struct.scatterlist* %33)
  %35 = call i8* @kmap_atomic(i32 %34)
  store i8* %35, i8** %9, align 8
  %36 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr i8, i8* %37, i64 %39
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %43 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @crypto_shash_digest(%struct.shash_desc* %36, i8* %40, i32 %41, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @kunmap_atomic(i8* %46)
  br label %61

48:                                               ; preds = %15, %2
  %49 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %50 = call i64 @crypto_shash_init(%struct.shash_desc* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %58

53:                                               ; preds = %48
  %54 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %55 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %56 = call i32 @shash_ahash_finup(%struct.ahash_request* %54, %struct.shash_desc* %55)
  %57 = sext i32 %56 to i64
  br label %58

58:                                               ; preds = %53, %52
  %59 = phi i64 [ %50, %52 ], [ %57, %53 ]
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %58, %32
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @crypto_shash_digest(%struct.shash_desc*, i8*, i32, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i64 @crypto_shash_init(%struct.shash_desc*) #1

declare dso_local i32 @shash_ahash_finup(%struct.ahash_request*, %struct.shash_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
