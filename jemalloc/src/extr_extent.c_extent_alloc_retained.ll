; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_alloc_retained.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_alloc_retained.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@config_prof = common dso_local global i64 0, align 8
@opt_retain = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_5__*, i32**, i8*, i64, i64, i64, i32, i32, i32*, i32*)* @extent_alloc_retained to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @extent_alloc_retained(i32* %0, %struct.TYPE_5__* %1, i32** %2, i8* %3, i64 %4, i64 %5, i64 %6, i32 %7, i32 %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store i32* %0, i32** %12, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %13, align 8
  store i32** %2, i32*** %14, align 8
  store i8* %3, i8** %15, align 8
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i64 %6, i64* %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  %24 = load i64, i64* %16, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i64, i64* %18, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32*, i32** %12, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = call i32 @malloc_mutex_lock(i32* %32, i32* %34)
  %36 = load i32*, i32** %12, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %38 = load i32**, i32*** %14, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i8*, i8** %15, align 8
  %42 = load i64, i64* %16, align 8
  %43 = load i64, i64* %17, align 8
  %44 = load i64, i64* %18, align 8
  %45 = load i32, i32* %19, align 4
  %46 = load i32, i32* %20, align 4
  %47 = load i32*, i32** %21, align 8
  %48 = load i32*, i32** %22, align 8
  %49 = call i32* @extent_recycle(i32* %36, %struct.TYPE_5__* %37, i32** %38, i32* %40, i8* %41, i64 %42, i64 %43, i64 %44, i32 %45, i32 %46, i32* %47, i32* %48, i32 1)
  store i32* %49, i32** %23, align 8
  %50 = load i32*, i32** %23, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %11
  %53 = load i32*, i32** %12, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = call i32 @malloc_mutex_unlock(i32* %53, i32* %55)
  %57 = load i64, i64* @config_prof, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32*, i32** %12, align 8
  %61 = load i32*, i32** %23, align 8
  %62 = call i32 @extent_gdump_add(i32* %60, i32* %61)
  br label %63

63:                                               ; preds = %59, %52
  br label %88

64:                                               ; preds = %11
  %65 = load i64, i64* @opt_retain, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %64
  %68 = load i8*, i8** %15, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load i32*, i32** %12, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %73 = load i32**, i32*** %14, align 8
  %74 = load i64, i64* %16, align 8
  %75 = load i64, i64* %17, align 8
  %76 = load i64, i64* %18, align 8
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %20, align 4
  %79 = load i32*, i32** %21, align 8
  %80 = load i32*, i32** %22, align 8
  %81 = call i32* @extent_grow_retained(i32* %71, %struct.TYPE_5__* %72, i32** %73, i64 %74, i64 %75, i64 %76, i32 %77, i32 %78, i32* %79, i32* %80)
  store i32* %81, i32** %23, align 8
  br label %87

82:                                               ; preds = %67, %64
  %83 = load i32*, i32** %12, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = call i32 @malloc_mutex_unlock(i32* %83, i32* %85)
  br label %87

87:                                               ; preds = %82, %70
  br label %88

88:                                               ; preds = %87, %63
  %89 = load i32*, i32** %12, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = call i32 @malloc_mutex_assert_not_owner(i32* %89, i32* %91)
  %93 = load i32*, i32** %23, align 8
  ret i32* %93
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @malloc_mutex_lock(i32*, i32*) #1

declare dso_local i32* @extent_recycle(i32*, %struct.TYPE_5__*, i32**, i32*, i8*, i64, i64, i64, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

declare dso_local i32 @extent_gdump_add(i32*, i32*) #1

declare dso_local i32* @extent_grow_retained(i32*, %struct.TYPE_5__*, i32**, i64, i64, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @malloc_mutex_assert_not_owner(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
