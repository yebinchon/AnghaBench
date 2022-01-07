; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_ralloc_no_move.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_ralloc_no_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@SC_LARGE_MAXCLASS = common dso_local global i64 0, align 8
@SC_SMALL_MAXCLASS = common dso_local global i64 0, align 8
@bin_infos = common dso_local global %struct.TYPE_2__* null, align 8
@SC_LARGE_MINCLASS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arena_ralloc_no_move(i32* %0, i8* %1, i64 %2, i64 %3, i64 %4, i32 %5, i64* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i64* %6, i64** %14, align 8
  %20 = load i64, i64* %12, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %7
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* %12, align 8
  %25 = add i64 %23, %24
  %26 = load i64, i64* @SC_LARGE_MAXCLASS, align 8
  %27 = icmp ule i64 %25, %26
  br label %28

28:                                               ; preds = %22, %7
  %29 = phi i1 [ true, %7 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32*, i32** %8, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = call i32* @iealloc(i32* %32, i8* %33)
  store i32* %34, i32** %16, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* @SC_LARGE_MAXCLASS, align 8
  %37 = icmp ugt i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  store i32 1, i32* %15, align 4
  br label %114

42:                                               ; preds = %28
  %43 = load i64, i64* %11, align 8
  %44 = call i64 @sz_s2u(i64 %43)
  store i64 %44, i64* %17, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %12, align 8
  %47 = add i64 %45, %46
  %48 = call i64 @sz_s2u(i64 %47)
  store i64 %48, i64* %18, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @SC_SMALL_MAXCLASS, align 8
  %51 = icmp ule i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load i64, i64* %17, align 8
  %54 = load i64, i64* @SC_SMALL_MAXCLASS, align 8
  %55 = icmp ule i64 %53, %54
  br label %56

56:                                               ; preds = %52, %42
  %57 = phi i1 [ false, %42 ], [ %55, %52 ]
  %58 = zext i1 %57 to i32
  %59 = call i64 @likely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %96

61:                                               ; preds = %56
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bin_infos, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i64 @sz_size2index(i64 %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %10, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i64, i64* %18, align 8
  %73 = load i64, i64* @SC_SMALL_MAXCLASS, align 8
  %74 = icmp ugt i64 %72, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %61
  %76 = load i64, i64* %18, align 8
  %77 = call i64 @sz_size2index(i64 %76)
  %78 = load i64, i64* %10, align 8
  %79 = call i64 @sz_size2index(i64 %78)
  %80 = icmp ne i64 %77, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %75, %61
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %10, align 8
  %84 = icmp ugt i64 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i64, i64* %18, align 8
  %87 = load i64, i64* %10, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85, %81
  store i32 1, i32* %15, align 4
  br label %114

90:                                               ; preds = %85, %75
  %91 = load i32*, i32** %16, align 8
  %92 = call i32* @arena_get_from_extent(i32* %91)
  store i32* %92, i32** %19, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = load i32*, i32** %19, align 8
  %95 = call i32 @arena_decay_tick(i32* %93, i32* %94)
  store i32 0, i32* %15, align 4
  br label %113

96:                                               ; preds = %56
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* @SC_LARGE_MINCLASS, align 8
  %99 = icmp uge i64 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %96
  %101 = load i64, i64* %18, align 8
  %102 = load i64, i64* @SC_LARGE_MINCLASS, align 8
  %103 = icmp uge i64 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = load i32*, i32** %8, align 8
  %106 = load i32*, i32** %16, align 8
  %107 = load i64, i64* %17, align 8
  %108 = load i64, i64* %18, align 8
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @large_ralloc_no_move(i32* %105, i32* %106, i64 %107, i64 %108, i32 %109)
  store i32 %110, i32* %15, align 4
  br label %112

111:                                              ; preds = %100, %96
  store i32 1, i32* %15, align 4
  br label %112

112:                                              ; preds = %111, %104
  br label %113

113:                                              ; preds = %112, %90
  br label %114

114:                                              ; preds = %113, %89, %41
  %115 = load i32*, i32** %16, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = call i32* @iealloc(i32* %116, i8* %117)
  %119 = icmp eq i32* %115, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load i32*, i32** %16, align 8
  %123 = call i64 @extent_usize_get(i32* %122)
  %124 = load i64*, i64** %14, align 8
  store i64 %123, i64* %124, align 8
  %125 = load i32, i32* %15, align 4
  ret i32 %125
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @iealloc(i32*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @sz_s2u(i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @sz_size2index(i64) #1

declare dso_local i32* @arena_get_from_extent(i32*) #1

declare dso_local i32 @arena_decay_tick(i32*, i32*) #1

declare dso_local i32 @large_ralloc_no_move(i32*, i32*, i64, i64, i32) #1

declare dso_local i64 @extent_usize_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
