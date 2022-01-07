; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_bin_malloc_hard.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_bin_malloc_hard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32* }

@bin_infos = common dso_local global %struct.TYPE_11__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, %struct.TYPE_10__*, i64, i32)* @arena_bin_malloc_hard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @arena_bin_malloc_hard(i32* %0, i32* %1, %struct.TYPE_10__* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** @bin_infos, align 8
  %16 = load i64, i64* %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i64 %16
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %12, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @arena_is_auto(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %5
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load i32*, i32** %8, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @arena_bin_slabs_full_insert(i32* %27, %struct.TYPE_10__* %28, i32* %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %26, %21, %5
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32* @arena_bin_nonfull_slab_get(i32* %36, i32* %37, %struct.TYPE_10__* %38, i64 %39, i32 %40)
  store i32* %41, i32** %13, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %91

46:                                               ; preds = %35
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @extent_nfree_get(i32* %49)
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %82

52:                                               ; preds = %46
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %57 = call i8* @arena_slab_reg_alloc(i32* %55, %struct.TYPE_11__* %56)
  store i8* %57, i8** %14, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %80

60:                                               ; preds = %52
  %61 = load i32*, i32** %13, align 8
  %62 = call i64 @extent_nfree_get(i32* %61)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i32*, i32** %7, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %72 = call i32 @arena_dalloc_bin_slab(i32* %68, i32* %69, i32* %70, %struct.TYPE_10__* %71)
  br label %79

73:                                               ; preds = %60
  %74 = load i32*, i32** %7, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %78 = call i32 @arena_bin_lower_slab(i32* %74, i32* %75, i32* %76, %struct.TYPE_10__* %77)
  br label %79

79:                                               ; preds = %73, %67
  br label %80

80:                                               ; preds = %79, %52
  %81 = load i8*, i8** %14, align 8
  store i8* %81, i8** %6, align 8
  br label %109

82:                                               ; preds = %46
  %83 = load i32*, i32** %8, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @arena_bin_slabs_full_insert(i32* %83, %struct.TYPE_10__* %84, i32* %87)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  store i32* null, i32** %90, align 8
  br label %91

91:                                               ; preds = %82, %35
  %92 = load i32*, i32** %13, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i8* null, i8** %6, align 8
  br label %109

95:                                               ; preds = %91
  %96 = load i32*, i32** %13, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  store i32* %96, i32** %98, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = call i64 @extent_nfree_get(i32* %101)
  %103 = icmp sgt i64 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load i32*, i32** %13, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %108 = call i8* @arena_slab_reg_alloc(i32* %106, %struct.TYPE_11__* %107)
  store i8* %108, i8** %6, align 8
  br label %109

109:                                              ; preds = %95, %94, %80
  %110 = load i8*, i8** %6, align 8
  ret i8* %110
}

declare dso_local i32 @arena_is_auto(i32*) #1

declare dso_local i32 @arena_bin_slabs_full_insert(i32*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32* @arena_bin_nonfull_slab_get(i32*, i32*, %struct.TYPE_10__*, i64, i32) #1

declare dso_local i64 @extent_nfree_get(i32*) #1

declare dso_local i8* @arena_slab_reg_alloc(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @arena_dalloc_bin_slab(i32*, i32*, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @arena_bin_lower_slab(i32*, i32*, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
