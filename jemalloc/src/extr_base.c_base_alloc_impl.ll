; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_base.c_base_alloc_impl.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_base.c_base_alloc_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

@QUANTUM = common dso_local global i64 0, align 8
@SC_NSIZES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.TYPE_5__*, i64, i64, i64*)* @base_alloc_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @base_alloc_impl(i32* %0, %struct.TYPE_5__* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i64 @QUANTUM_CEILING(i64 %16)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i64 @ALIGNMENT_CEILING(i64 %18, i64 %19)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %9, align 8
  %23 = add i64 %21, %22
  %24 = load i64, i64* @QUANTUM, align 8
  %25 = sub i64 %23, %24
  store i64 %25, i64* %12, align 8
  store i32* null, i32** %13, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @malloc_mutex_lock(i32* %26, i32* %28)
  %30 = load i64, i64* %12, align 8
  %31 = call i64 @sz_size2index(i64 %30)
  store i64 %31, i64* %14, align 8
  br label %32

32:                                               ; preds = %47, %5
  %33 = load i64, i64* %14, align 8
  %34 = load i64, i64* @SC_NSIZES, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %14, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = call i32* @extent_heap_remove_first(i32* %41)
  store i32* %42, i32** %13, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %50

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %14, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %14, align 8
  br label %32

50:                                               ; preds = %45, %32
  %51 = load i32*, i32** %13, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32* @base_extent_alloc(i32* %54, %struct.TYPE_5__* %55, i64 %56, i64 %57)
  store i32* %58, i32** %13, align 8
  br label %59

59:                                               ; preds = %53, %50
  %60 = load i32*, i32** %13, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i8* null, i8** %15, align 8
  br label %76

63:                                               ; preds = %59
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i8* @base_extent_bump_alloc(%struct.TYPE_5__* %64, i32* %65, i64 %66, i64 %67)
  store i8* %68, i8** %15, align 8
  %69 = load i64*, i64** %10, align 8
  %70 = icmp ne i64* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load i32*, i32** %13, align 8
  %73 = call i64 @extent_sn_get(i32* %72)
  %74 = load i64*, i64** %10, align 8
  store i64 %73, i64* %74, align 8
  br label %75

75:                                               ; preds = %71, %63
  br label %76

76:                                               ; preds = %75, %62
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = call i32 @malloc_mutex_unlock(i32* %77, i32* %79)
  %81 = load i8*, i8** %15, align 8
  ret i8* %81
}

declare dso_local i64 @QUANTUM_CEILING(i64) #1

declare dso_local i64 @ALIGNMENT_CEILING(i64, i64) #1

declare dso_local i32 @malloc_mutex_lock(i32*, i32*) #1

declare dso_local i64 @sz_size2index(i64) #1

declare dso_local i32* @extent_heap_remove_first(i32*) #1

declare dso_local i32* @base_extent_alloc(i32*, %struct.TYPE_5__*, i64, i64) #1

declare dso_local i8* @base_extent_bump_alloc(%struct.TYPE_5__*, i32*, i64, i64) #1

declare dso_local i64 @extent_sn_get(i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
