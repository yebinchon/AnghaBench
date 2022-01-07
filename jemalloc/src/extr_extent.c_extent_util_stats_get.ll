; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_util_stats_get.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_util_stats_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@bin_infos = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @extent_util_stats_get(i32* %0, i8* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %5
  %15 = load i64*, i64** %8, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i64*, i64** %9, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i64*, i64** %10, align 8
  %22 = icmp ne i64* %21, null
  br label %23

23:                                               ; preds = %20, %17, %14, %5
  %24 = phi i1 [ false, %17 ], [ false, %14 ], [ false, %5 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32* @iealloc(i32* %27, i8* %28)
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = icmp eq i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load i64*, i64** %10, align 8
  store i64 0, i64* %36, align 8
  %37 = load i64*, i64** %9, align 8
  store i64 0, i64* %37, align 8
  %38 = load i64*, i64** %8, align 8
  store i64 0, i64* %38, align 8
  br label %77

39:                                               ; preds = %23
  %40 = load i32*, i32** %11, align 8
  %41 = call i64 @extent_size_get(i32* %40)
  %42 = load i64*, i64** %10, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @extent_slab_get(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i64*, i64** %8, align 8
  store i64 0, i64* %47, align 8
  %48 = load i64*, i64** %9, align 8
  store i64 1, i64* %48, align 8
  br label %77

49:                                               ; preds = %39
  %50 = load i32*, i32** %11, align 8
  %51 = call i64 @extent_nfree_get(i32* %50)
  %52 = load i64*, i64** %8, align 8
  store i64 %51, i64* %52, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bin_infos, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i64 @extent_szind_get(i32* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %9, align 8
  store i64 %58, i64* %59, align 8
  %60 = load i64*, i64** %8, align 8
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** %9, align 8
  %63 = load i64, i64* %62, align 8
  %64 = icmp ule i64 %61, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i64*, i64** %8, align 8
  %68 = load i64, i64* %67, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = call i64 @extent_usize_get(i32* %69)
  %71 = mul i64 %68, %70
  %72 = load i64*, i64** %10, align 8
  %73 = load i64, i64* %72, align 8
  %74 = icmp ule i64 %71, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  br label %77

77:                                               ; preds = %35, %49, %46
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @iealloc(i32*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @extent_size_get(i32*) #1

declare dso_local i32 @extent_slab_get(i32*) #1

declare dso_local i64 @extent_nfree_get(i32*) #1

declare dso_local i64 @extent_szind_get(i32*) #1

declare dso_local i64 @extent_usize_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
