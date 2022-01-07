; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_get_priority_heaps.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_get_priority_heaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_uri = type { i64, %struct.cache_uri* }
%struct.TYPE_7__ = type { i32, i32, i64 }

@CACHE_MAX_HEAP_SIZE = common dso_local global i32 0, align 4
@cached_heap_cmp = common dso_local global i32 0, align 4
@uncached_heap_cmp = common dso_local global i32 0, align 4
@uri_hash_prime = common dso_local global i32 0, align 4
@H = common dso_local global %struct.cache_uri** null, align 8
@verbosity = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"cached\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"uncached\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_get_priority_heaps(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.cache_uri*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = load i32, i32* @CACHE_MAX_HEAP_SIZE, align 4
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %17, %6
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @CACHE_MAX_HEAP_SIZE, align 4
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %22, %19
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @CACHE_MAX_HEAP_SIZE, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  br label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @CACHE_MAX_HEAP_SIZE, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @cached_heap_cmp, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @CACHE_MAX_HEAP_SIZE, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i32, i32* %10, align 4
  br label %50

48:                                               ; preds = %34
  %49 = load i32, i32* @CACHE_MAX_HEAP_SIZE, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @uncached_heap_cmp, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %88, %50
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @uri_hash_prime, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %91

61:                                               ; preds = %57
  %62 = load %struct.cache_uri**, %struct.cache_uri*** @H, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.cache_uri*, %struct.cache_uri** %62, i64 %64
  %66 = load %struct.cache_uri*, %struct.cache_uri** %65, align 8
  store %struct.cache_uri* %66, %struct.cache_uri** %14, align 8
  br label %67

67:                                               ; preds = %83, %61
  %68 = load %struct.cache_uri*, %struct.cache_uri** %14, align 8
  %69 = icmp ne %struct.cache_uri* %68, null
  br i1 %69, label %70, label %87

70:                                               ; preds = %67
  %71 = load %struct.cache_uri*, %struct.cache_uri** %14, align 8
  %72 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  br label %79

77:                                               ; preds = %70
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi %struct.TYPE_7__* [ %76, %75 ], [ %78, %77 ]
  %81 = load %struct.cache_uri*, %struct.cache_uri** %14, align 8
  %82 = call i32 @cache_heap_insert(%struct.TYPE_7__* %80, %struct.cache_uri* %81)
  br label %83

83:                                               ; preds = %79
  %84 = load %struct.cache_uri*, %struct.cache_uri** %14, align 8
  %85 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %84, i32 0, i32 1
  %86 = load %struct.cache_uri*, %struct.cache_uri** %85, align 8
  store %struct.cache_uri* %86, %struct.cache_uri** %14, align 8
  br label %67

87:                                               ; preds = %67
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %57

91:                                               ; preds = %57
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %93 = call i32 @cache_heap_sort(%struct.TYPE_7__* %92)
  %94 = load i32*, i32** %11, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* @verbosity, align 4
  %96 = icmp sge i32 %95, 3
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @cache_dump_priority_heap(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %98, i32 %100)
  br label %102

102:                                              ; preds = %97, %91
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %104 = call i32 @cache_heap_sort(%struct.TYPE_7__* %103)
  %105 = load i32*, i32** %12, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* @verbosity, align 4
  %107 = icmp sge i32 %106, 3
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %110 = load i32*, i32** %12, align 8
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @cache_dump_priority_heap(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_7__* %109, i32 %111)
  br label %113

113:                                              ; preds = %108, %102
  ret i32 0
}

declare dso_local i32 @cache_heap_insert(%struct.TYPE_7__*, %struct.cache_uri*) #1

declare dso_local i32 @cache_heap_sort(%struct.TYPE_7__*) #1

declare dso_local i32 @cache_dump_priority_heap(i8*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
