; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_prof.c_prof_idump.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_prof.c_prof_idump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@config_prof = common dso_local global i32 0, align 4
@prof_booted = common dso_local global i32 0, align 4
@prof_dump_filename_mtx = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@prof_dump_iseq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prof_idump(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @config_prof, align 4
  %8 = call i32 @cassert(i32 %7)
  %9 = load i32, i32* @prof_booted, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = call i64 @tsdn_null(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = call i32 (...) @prof_active_get_unlocked()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %11, %1
  br label %72

19:                                               ; preds = %15
  %20 = load i32*, i32** %2, align 8
  %21 = call i32* @tsdn_tsd(i32* %20)
  store i32* %21, i32** %3, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @tsd_reentrancy_level_get(i32* %22)
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %72

26:                                               ; preds = %19
  %27 = load i32*, i32** %3, align 8
  %28 = call %struct.TYPE_3__* @prof_tdata_get(i32* %27, i32 1)
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %4, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = icmp eq %struct.TYPE_3__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %72

32:                                               ; preds = %26
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %72

40:                                               ; preds = %32
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @tsd_tsdn(i32* %41)
  %43 = call i32 @malloc_mutex_lock(i32 %42, i32* @prof_dump_filename_mtx)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @tsd_tsdn(i32* %44)
  %46 = call i8* @prof_dump_prefix_get(i32 %45)
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %40
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @tsd_tsdn(i32* %52)
  %54 = call i32 @malloc_mutex_unlock(i32 %53, i32* @prof_dump_filename_mtx)
  br label %72

55:                                               ; preds = %40
  %56 = load i32, i32* @PATH_MAX, align 4
  %57 = add nsw i32 %56, 1
  %58 = zext i32 %57 to i64
  %59 = call i8* @llvm.stacksave()
  store i8* %59, i8** %5, align 8
  %60 = alloca i8, i64 %58, align 16
  store i64 %58, i64* %6, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* @prof_dump_iseq, align 4
  %63 = call i32 @prof_dump_filename(i32* %61, i8* %60, i8 signext 105, i32 %62)
  %64 = load i32, i32* @prof_dump_iseq, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @prof_dump_iseq, align 4
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @tsd_tsdn(i32* %66)
  %68 = call i32 @malloc_mutex_unlock(i32 %67, i32* @prof_dump_filename_mtx)
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @prof_dump(i32* %69, i32 0, i8* %60, i32 0)
  %71 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %71)
  br label %72

72:                                               ; preds = %55, %51, %37, %31, %25, %18
  ret void
}

declare dso_local i32 @cassert(i32) #1

declare dso_local i64 @tsdn_null(i32*) #1

declare dso_local i32 @prof_active_get_unlocked(...) #1

declare dso_local i32* @tsdn_tsd(i32*) #1

declare dso_local i64 @tsd_reentrancy_level_get(i32*) #1

declare dso_local %struct.TYPE_3__* @prof_tdata_get(i32*, i32) #1

declare dso_local i32 @malloc_mutex_lock(i32, i32*) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i8* @prof_dump_prefix_get(i32) #1

declare dso_local i32 @malloc_mutex_unlock(i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @prof_dump_filename(i32*, i8*, i8 signext, i32) #1

declare dso_local i32 @prof_dump(i32*, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
