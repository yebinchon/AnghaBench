; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_recycle_extract.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_recycle_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@WITNESS_RANK_CORE = common dso_local global i32 0, align 4
@config_debug = common dso_local global i64 0, align 8
@PAGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32**, i32*, %struct.TYPE_6__*, i8*, i64, i64, i64, i32, i32)* @extent_recycle_extract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @extent_recycle_extract(i32* %0, i32* %1, i32** %2, i32* %3, %struct.TYPE_6__* %4, i8* %5, i64 %6, i64 %7, i64 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32** %2, i32*** %15, align 8
  store i32* %3, i32** %16, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %17, align 8
  store i8* %5, i8** %18, align 8
  store i64 %6, i64* %19, align 8
  store i64 %7, i64* %20, align 8
  store i64 %8, i64* %21, align 8
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  %27 = load i32*, i32** %13, align 8
  %28 = call i32 @tsdn_witness_tsdp_get(i32* %27)
  %29 = load i32, i32* @WITNESS_RANK_CORE, align 4
  %30 = load i32, i32* %23, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  %34 = call i32 @witness_assert_depth_to_rank(i32 %28, i32 %29, i32 %33)
  %35 = load i64, i64* %21, align 8
  %36 = icmp ugt i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i64, i64* @config_debug, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %11
  %42 = load i8*, i8** %18, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load i8*, i8** %18, align 8
  %46 = call i8* @PAGE_ADDR2BASE(i8* %45)
  %47 = load i8*, i8** %18, align 8
  %48 = icmp eq i8* %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i64, i64* %20, align 8
  %52 = icmp eq i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i64, i64* %21, align 8
  %56 = load i64, i64* @PAGE, align 8
  %57 = icmp ule i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  br label %60

60:                                               ; preds = %44, %41, %11
  %61 = load i64, i64* %19, align 8
  %62 = load i64, i64* %20, align 8
  %63 = add i64 %61, %62
  store i64 %63, i64* %24, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = call i32 @malloc_mutex_lock(i32* %64, i32* %66)
  %68 = load i32*, i32** %14, align 8
  %69 = load i32**, i32*** %15, align 8
  %70 = call i32 @extent_hooks_assure_initialized(i32* %68, i32** %69)
  %71 = load i8*, i8** %18, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %110

73:                                               ; preds = %60
  %74 = load i32*, i32** %13, align 8
  %75 = load i32*, i32** %16, align 8
  %76 = load i8*, i8** %18, align 8
  %77 = call i32* @extent_lock_from_addr(i32* %74, i32* %75, i8* %76, i32 0)
  store i32* %77, i32** %25, align 8
  %78 = load i32*, i32** %25, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %109

80:                                               ; preds = %73
  %81 = load i32*, i32** %25, align 8
  store i32* %81, i32** %26, align 8
  %82 = load i32*, i32** %25, align 8
  %83 = call i8* @extent_base_get(i32* %82)
  %84 = load i8*, i8** %18, align 8
  %85 = icmp eq i8* %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load i32*, i32** %25, align 8
  %89 = call i64 @extent_arena_ind_get(i32* %88)
  %90 = load i32*, i32** %14, align 8
  %91 = call i64 @arena_ind_get(i32* %90)
  %92 = icmp ne i64 %89, %91
  br i1 %92, label %104, label %93

93:                                               ; preds = %80
  %94 = load i32*, i32** %25, align 8
  %95 = call i64 @extent_size_get(i32* %94)
  %96 = load i64, i64* %24, align 8
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %93
  %99 = load i32*, i32** %25, align 8
  %100 = call i64 @extent_state_get(i32* %99)
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %102 = call i64 @eset_state_get(%struct.TYPE_6__* %101)
  %103 = icmp ne i64 %100, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98, %93, %80
  store i32* null, i32** %25, align 8
  br label %105

105:                                              ; preds = %104, %98
  %106 = load i32*, i32** %13, align 8
  %107 = load i32*, i32** %26, align 8
  %108 = call i32 @extent_unlock(i32* %106, i32* %107)
  br label %109

109:                                              ; preds = %105, %73
  br label %116

110:                                              ; preds = %60
  %111 = load i32*, i32** %13, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %113 = load i64, i64* %24, align 8
  %114 = load i64, i64* %21, align 8
  %115 = call i32* @eset_fit_locked(i32* %111, %struct.TYPE_6__* %112, i64 %113, i64 %114)
  store i32* %115, i32** %25, align 8
  br label %116

116:                                              ; preds = %110, %109
  %117 = load i32*, i32** %25, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load i32*, i32** %13, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = call i32 @malloc_mutex_unlock(i32* %120, i32* %122)
  store i32* null, i32** %12, align 8
  br label %135

124:                                              ; preds = %116
  %125 = load i32*, i32** %13, align 8
  %126 = load i32*, i32** %14, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %128 = load i32*, i32** %25, align 8
  %129 = call i32 @extent_activate_locked(i32* %125, i32* %126, %struct.TYPE_6__* %127, i32* %128)
  %130 = load i32*, i32** %13, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = call i32 @malloc_mutex_unlock(i32* %130, i32* %132)
  %134 = load i32*, i32** %25, align 8
  store i32* %134, i32** %12, align 8
  br label %135

135:                                              ; preds = %124, %119
  %136 = load i32*, i32** %12, align 8
  ret i32* %136
}

declare dso_local i32 @witness_assert_depth_to_rank(i32, i32, i32) #1

declare dso_local i32 @tsdn_witness_tsdp_get(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @PAGE_ADDR2BASE(i8*) #1

declare dso_local i32 @malloc_mutex_lock(i32*, i32*) #1

declare dso_local i32 @extent_hooks_assure_initialized(i32*, i32**) #1

declare dso_local i32* @extent_lock_from_addr(i32*, i32*, i8*, i32) #1

declare dso_local i8* @extent_base_get(i32*) #1

declare dso_local i64 @extent_arena_ind_get(i32*) #1

declare dso_local i64 @arena_ind_get(i32*) #1

declare dso_local i64 @extent_size_get(i32*) #1

declare dso_local i64 @extent_state_get(i32*) #1

declare dso_local i64 @eset_state_get(%struct.TYPE_6__*) #1

declare dso_local i32 @extent_unlock(i32*, i32*) #1

declare dso_local i32* @eset_fit_locked(i32*, %struct.TYPE_6__*, i64, i64) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

declare dso_local i32 @extent_activate_locked(i32*, i32*, %struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
