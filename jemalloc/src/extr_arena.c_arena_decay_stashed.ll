; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_decay_stashed.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_decay_stashed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32 }

@config_stats = common dso_local global i64 0, align 8
@LG_PAGE = common dso_local global i64 0, align 8
@JEMALLOC_FALLTHROUGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_16__*, i32**, %struct.TYPE_17__*, i32*, i32, i32*, i32)* @arena_decay_stashed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @arena_decay_stashed(i32* %0, %struct.TYPE_16__* %1, i32** %2, %struct.TYPE_17__* %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %10, align 8
  store i32** %2, i32*** %11, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %23 = load i64, i64* @config_stats, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  br label %26

26:                                               ; preds = %25, %8
  store i64 0, i64* %19, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %28 = call i32 @arena_muzzy_decay_ms_get(%struct.TYPE_16__* %27)
  store i32 %28, i32* %20, align 4
  %29 = load i32*, i32** %15, align 8
  %30 = call i32* @extent_list_first(i32* %29)
  store i32* %30, i32** %21, align 8
  br label %31

31:                                               ; preds = %101, %26
  %32 = load i32*, i32** %21, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %104

34:                                               ; preds = %31
  %35 = load i64, i64* @config_stats, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i64, i64* %17, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %17, align 8
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32*, i32** %21, align 8
  %42 = call i64 @extent_size_get(i32* %41)
  %43 = load i64, i64* @LG_PAGE, align 8
  %44 = lshr i64 %42, %43
  store i64 %44, i64* %22, align 8
  %45 = load i64, i64* %22, align 8
  %46 = load i64, i64* %19, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %19, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = load i32*, i32** %21, align 8
  %50 = call i32 @extent_list_remove(i32* %48, i32* %49)
  %51 = load i32*, i32** %13, align 8
  %52 = call i32 @eset_state_get(i32* %51)
  switch i32 %52, label %98 [
    i32 131, label %53
    i32 130, label %55
    i32 129, label %84
    i32 128, label %97
  ]

53:                                               ; preds = %40
  %54 = call i32 (...) @not_reached()
  br label %55

55:                                               ; preds = %40, %53
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %82, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %20, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %58
  %62 = load i32*, i32** %9, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %64 = load i32**, i32*** %11, align 8
  %65 = load i32*, i32** %21, align 8
  %66 = load i32*, i32** %21, align 8
  %67 = call i64 @extent_size_get(i32* %66)
  %68 = call i32 @extent_purge_lazy_wrapper(i32* %62, %struct.TYPE_16__* %63, i32** %64, i32* %65, i32 0, i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %61
  %71 = load i32*, i32** %9, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %73 = load i32**, i32*** %11, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load i32*, i32** %21, align 8
  %77 = call i32 @extents_dalloc(i32* %71, %struct.TYPE_16__* %72, i32** %73, i32* %75, i32* %76)
  %78 = load i32*, i32** %9, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @arena_background_thread_inactivity_check(i32* %78, %struct.TYPE_16__* %79, i32 %80)
  br label %100

82:                                               ; preds = %61, %58, %55
  %83 = load i32, i32* @JEMALLOC_FALLTHROUGH, align 4
  br label %84

84:                                               ; preds = %40, %82
  %85 = load i32*, i32** %9, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %87 = load i32**, i32*** %11, align 8
  %88 = load i32*, i32** %21, align 8
  %89 = call i32 @extent_dalloc_wrapper(i32* %85, %struct.TYPE_16__* %86, i32** %87, i32* %88)
  %90 = load i64, i64* @config_stats, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load i64, i64* %22, align 8
  %94 = load i64, i64* %18, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %18, align 8
  br label %96

96:                                               ; preds = %92, %84
  br label %100

97:                                               ; preds = %40
  br label %98

98:                                               ; preds = %40, %97
  %99 = call i32 (...) @not_reached()
  br label %100

100:                                              ; preds = %98, %96, %70
  br label %101

101:                                              ; preds = %100
  %102 = load i32*, i32** %15, align 8
  %103 = call i32* @extent_list_first(i32* %102)
  store i32* %103, i32** %21, align 8
  br label %31

104:                                              ; preds = %31
  %105 = load i64, i64* @config_stats, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %152

107:                                              ; preds = %104
  %108 = load i32*, i32** %9, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = call i32 @arena_stats_lock(i32* %108, %struct.TYPE_18__* %110)
  %112 = load i32*, i32** %9, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 2
  %119 = call i32 @arena_stats_add_u64(i32* %112, %struct.TYPE_18__* %114, i32* %118, i64 1)
  %120 = load i32*, i32** %9, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = load i64, i64* %17, align 8
  %128 = call i32 @arena_stats_add_u64(i32* %120, %struct.TYPE_18__* %122, i32* %126, i64 %127)
  %129 = load i32*, i32** %9, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load i64, i64* %19, align 8
  %137 = call i32 @arena_stats_add_u64(i32* %129, %struct.TYPE_18__* %131, i32* %135, i64 %136)
  %138 = load i32*, i32** %9, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = load i64, i64* %18, align 8
  %145 = load i64, i64* @LG_PAGE, align 8
  %146 = shl i64 %144, %145
  %147 = call i32 @arena_stats_sub_zu(i32* %138, %struct.TYPE_18__* %140, i32* %143, i64 %146)
  %148 = load i32*, i32** %9, align 8
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = call i32 @arena_stats_unlock(i32* %148, %struct.TYPE_18__* %150)
  br label %152

152:                                              ; preds = %107, %104
  %153 = load i64, i64* %19, align 8
  ret i64 %153
}

declare dso_local i32 @arena_muzzy_decay_ms_get(%struct.TYPE_16__*) #1

declare dso_local i32* @extent_list_first(i32*) #1

declare dso_local i64 @extent_size_get(i32*) #1

declare dso_local i32 @extent_list_remove(i32*, i32*) #1

declare dso_local i32 @eset_state_get(i32*) #1

declare dso_local i32 @not_reached(...) #1

declare dso_local i32 @extent_purge_lazy_wrapper(i32*, %struct.TYPE_16__*, i32**, i32*, i32, i64) #1

declare dso_local i32 @extents_dalloc(i32*, %struct.TYPE_16__*, i32**, i32*, i32*) #1

declare dso_local i32 @arena_background_thread_inactivity_check(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @extent_dalloc_wrapper(i32*, %struct.TYPE_16__*, i32**, i32*) #1

declare dso_local i32 @arena_stats_lock(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @arena_stats_add_u64(i32*, %struct.TYPE_18__*, i32*, i64) #1

declare dso_local i32 @arena_stats_sub_zu(i32*, %struct.TYPE_18__*, i32*, i64) #1

declare dso_local i32 @arena_stats_unlock(i32*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
