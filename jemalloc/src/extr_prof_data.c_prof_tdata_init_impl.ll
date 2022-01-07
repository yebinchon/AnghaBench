; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_prof_data.c_prof_tdata_init_impl.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_prof_data.c_prof_tdata_init_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8*, i8*, i32 }

@config_prof = common dso_local global i32 0, align 4
@TSDN_NULL = common dso_local global i32 0, align 4
@PROF_CKH_MINITEMS = common dso_local global i32 0, align 4
@prof_bt_hash = common dso_local global i32 0, align 4
@prof_bt_keycomp = common dso_local global i32 0, align 4
@tdatas_mtx = common dso_local global i32 0, align 4
@tdatas = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @prof_tdata_init_impl(i32* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = call i64 @tsd_reentrancy_level_get(i32* %15)
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* @config_prof, align 4
  %21 = call i32 @cassert(i32 %20)
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @tsd_tsdn(i32* %22)
  %24 = call i32 @sz_size2index(i32 72)
  %25 = load i32, i32* @TSDN_NULL, align 4
  %26 = call i32 @arena_get(i32 %25, i32 0, i32 1)
  %27 = call i64 @iallocztm(i32 %23, i32 72, i32 %24, i32 0, i32* null, i32 1, i32 %26, i32 1)
  %28 = inttoptr i64 %27 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %14, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %30 = icmp eq %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %6
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  br label %92

32:                                               ; preds = %6
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @prof_tdata_mutex_choose(i8* %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 12
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 11
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 10
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32 1, i32* %47, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i32 0, i32* %49, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 9
  store i64 0, i64* %51, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 8
  %55 = load i32, i32* @PROF_CKH_MINITEMS, align 4
  %56 = load i32, i32* @prof_bt_hash, align 4
  %57 = load i32, i32* @prof_bt_keycomp, align 4
  %58 = call i64 @ckh_new(i32* %52, i32* %54, i32 %55, i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %32
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @tsd_tsdn(i32* %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %64 = call i32 @idalloctm(i32 %62, %struct.TYPE_5__* %63, i32* null, i32* null, i32 1, i32 1)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  br label %92

65:                                               ; preds = %32
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @prof_sample_threshold_update(i32* %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  store i32 0, i32* %73, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 4
  store i32 0, i32* %75, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 5
  store i32 0, i32* %77, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 6
  store i32 0, i32* %79, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @tsd_tsdn(i32* %83)
  %85 = call i32 @malloc_mutex_lock(i32 %84, i32* @tdatas_mtx)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %87 = call i32 @tdata_tree_insert(i32* @tdatas, %struct.TYPE_5__* %86)
  %88 = load i32*, i32** %8, align 8
  %89 = call i32 @tsd_tsdn(i32* %88)
  %90 = call i32 @malloc_mutex_unlock(i32 %89, i32* @tdatas_mtx)
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %91, %struct.TYPE_5__** %7, align 8
  br label %92

92:                                               ; preds = %71, %60, %31
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  ret %struct.TYPE_5__* %93
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @tsd_reentrancy_level_get(i32*) #1

declare dso_local i32 @cassert(i32) #1

declare dso_local i64 @iallocztm(i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32 @sz_size2index(i32) #1

declare dso_local i32 @arena_get(i32, i32, i32) #1

declare dso_local i32 @prof_tdata_mutex_choose(i8*) #1

declare dso_local i64 @ckh_new(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @idalloctm(i32, %struct.TYPE_5__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @prof_sample_threshold_update(i32*) #1

declare dso_local i32 @malloc_mutex_lock(i32, i32*) #1

declare dso_local i32 @tdata_tree_insert(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @malloc_mutex_unlock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
