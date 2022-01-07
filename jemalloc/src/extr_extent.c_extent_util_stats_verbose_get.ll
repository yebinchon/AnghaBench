; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_util_stats_verbose_get.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_util_stats_verbose_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }

@bin_infos = common dso_local global %struct.TYPE_10__* null, align 8
@arenas = common dso_local global i32* null, align 8
@ATOMIC_RELAXED = common dso_local global i32 0, align 4
@config_stats = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @extent_util_stats_verbose_get(i32* %0, i8* %1, i64* %2, i64* %3, i64* %4, i64* %5, i64* %6, i8** %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_9__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_8__*, align 8
  %22 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64* %2, i64** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  store i8** %7, i8*** %16, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %8
  %26 = load i64*, i64** %11, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = load i64*, i64** %12, align 8
  %30 = icmp ne i64* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load i64*, i64** %13, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load i64*, i64** %14, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i64*, i64** %15, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i8**, i8*** %16, align 8
  %42 = icmp ne i8** %41, null
  br label %43

43:                                               ; preds = %40, %37, %34, %31, %28, %25, %8
  %44 = phi i1 [ false, %37 ], [ false, %34 ], [ false, %31 ], [ false, %28 ], [ false, %25 ], [ false, %8 ], [ %42, %40 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32*, i32** %9, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i32* @iealloc(i32* %47, i8* %48)
  store i32* %49, i32** %17, align 8
  %50 = load i32*, i32** %17, align 8
  %51 = icmp eq i32* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %43
  %56 = load i64*, i64** %15, align 8
  store i64 0, i64* %56, align 8
  %57 = load i64*, i64** %14, align 8
  store i64 0, i64* %57, align 8
  %58 = load i64*, i64** %13, align 8
  store i64 0, i64* %58, align 8
  %59 = load i64*, i64** %12, align 8
  store i64 0, i64* %59, align 8
  %60 = load i64*, i64** %11, align 8
  store i64 0, i64* %60, align 8
  %61 = load i8**, i8*** %16, align 8
  store i8* null, i8** %61, align 8
  br label %190

62:                                               ; preds = %43
  %63 = load i32*, i32** %17, align 8
  %64 = call i64 @extent_size_get(i32* %63)
  %65 = load i64*, i64** %13, align 8
  store i64 %64, i64* %65, align 8
  %66 = load i32*, i32** %17, align 8
  %67 = call i32 @extent_slab_get(i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %62
  %70 = load i64*, i64** %15, align 8
  store i64 0, i64* %70, align 8
  %71 = load i64*, i64** %14, align 8
  store i64 0, i64* %71, align 8
  %72 = load i64*, i64** %11, align 8
  store i64 0, i64* %72, align 8
  %73 = load i64*, i64** %12, align 8
  store i64 1, i64* %73, align 8
  %74 = load i8**, i8*** %16, align 8
  store i8* null, i8** %74, align 8
  br label %190

75:                                               ; preds = %62
  %76 = load i32*, i32** %17, align 8
  %77 = call i64 @extent_nfree_get(i32* %76)
  %78 = load i64*, i64** %11, align 8
  store i64 %77, i64* %78, align 8
  %79 = load i32*, i32** %17, align 8
  %80 = call i64 @extent_szind_get(i32* %79)
  store i64 %80, i64* %18, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bin_infos, align 8
  %82 = load i64, i64* %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64*, i64** %12, align 8
  store i64 %85, i64* %86, align 8
  %87 = load i64*, i64** %11, align 8
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** %12, align 8
  %90 = load i64, i64* %89, align 8
  %91 = icmp ule i64 %88, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load i64*, i64** %11, align 8
  %95 = load i64, i64* %94, align 8
  %96 = load i32*, i32** %17, align 8
  %97 = call i64 @extent_usize_get(i32* %96)
  %98 = mul i64 %95, %97
  %99 = load i64*, i64** %13, align 8
  %100 = load i64, i64* %99, align 8
  %101 = icmp ule i64 %98, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load i32*, i32** @arenas, align 8
  %105 = load i32*, i32** %17, align 8
  %106 = call i64 @extent_arena_ind_get(i32* %105)
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* @ATOMIC_RELAXED, align 4
  %109 = call i64 @atomic_load_p(i32* %107, i32 %108)
  %110 = inttoptr i64 %109 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %110, %struct.TYPE_9__** %19, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %112 = icmp ne %struct.TYPE_9__* %111, null
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load i32*, i32** %17, align 8
  %116 = call i32 @extent_binshard_get(i32* %115)
  store i32 %116, i32* %20, align 4
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = load i64, i64* %18, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = load i32, i32* %20, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i64 %125
  store %struct.TYPE_8__* %126, %struct.TYPE_8__** %21, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = call i32 @malloc_mutex_lock(i32* %127, i32* %129)
  %131 = load i64, i64* @config_stats, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %159

133:                                              ; preds = %75
  %134 = load i64*, i64** %12, align 8
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = mul i64 %135, %139
  %141 = load i64*, i64** %15, align 8
  store i64 %140, i64* %141, align 8
  %142 = load i64*, i64** %15, align 8
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp uge i64 %143, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  %151 = load i64*, i64** %15, align 8
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = sub i64 %152, %156
  %158 = load i64*, i64** %14, align 8
  store i64 %157, i64* %158, align 8
  br label %162

159:                                              ; preds = %75
  %160 = load i64*, i64** %15, align 8
  store i64 0, i64* %160, align 8
  %161 = load i64*, i64** %14, align 8
  store i64 0, i64* %161, align 8
  br label %162

162:                                              ; preds = %159, %133
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  store i32* %170, i32** %22, align 8
  br label %175

171:                                              ; preds = %162
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 1
  %174 = call i32* @extent_heap_first(i32* %173)
  store i32* %174, i32** %22, align 8
  br label %175

175:                                              ; preds = %171, %167
  %176 = load i32*, i32** %22, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32*, i32** %22, align 8
  %180 = call i32* @extent_addr_get(i32* %179)
  br label %182

181:                                              ; preds = %175
  br label %182

182:                                              ; preds = %181, %178
  %183 = phi i32* [ %180, %178 ], [ null, %181 ]
  %184 = bitcast i32* %183 to i8*
  %185 = load i8**, i8*** %16, align 8
  store i8* %184, i8** %185, align 8
  %186 = load i32*, i32** %9, align 8
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = call i32 @malloc_mutex_unlock(i32* %186, i32* %188)
  br label %190

190:                                              ; preds = %182, %69, %55
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

declare dso_local i64 @atomic_load_p(i32*, i32) #1

declare dso_local i64 @extent_arena_ind_get(i32*) #1

declare dso_local i32 @extent_binshard_get(i32*) #1

declare dso_local i32 @malloc_mutex_lock(i32*, i32*) #1

declare dso_local i32* @extent_heap_first(i32*) #1

declare dso_local i32* @extent_addr_get(i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
