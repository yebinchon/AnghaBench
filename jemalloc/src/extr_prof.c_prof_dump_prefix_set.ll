; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_prof.c_prof_dump_prefix_set.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_prof.c_prof_dump_prefix_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config_prof = common dso_local global i32 0, align 4
@prof_dump_filename_mtx = common dso_local global i32 0, align 4
@prof_dump_prefix = common dso_local global i8* null, align 8
@PROF_DUMP_FILENAME_LEN = common dso_local global i32 0, align 4
@QUANTUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prof_dump_prefix_set(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @config_prof, align 4
  %8 = call i32 @cassert(i32 %7)
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @ctl_mtx_assert_held(i32* %9)
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @malloc_mutex_lock(i32* %11, i32* @prof_dump_filename_mtx)
  %13 = load i8*, i8** @prof_dump_prefix, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @malloc_mutex_unlock(i32* %16, i32* @prof_dump_filename_mtx)
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 (...) @b0get()
  %20 = load i32, i32* @PROF_DUMP_FILENAME_LEN, align 4
  %21 = load i32, i32* @QUANTUM, align 4
  %22 = call i8* @base_alloc(i32* %18, i32 %19, i32 %20, i32 %21)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %47

26:                                               ; preds = %15
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @malloc_mutex_lock(i32* %27, i32* @prof_dump_filename_mtx)
  %29 = load i8*, i8** %6, align 8
  store i8* %29, i8** @prof_dump_prefix, align 8
  br label %30

30:                                               ; preds = %26, %2
  %31 = load i8*, i8** @prof_dump_prefix, align 8
  %32 = icmp ne i8* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i8*, i8** @prof_dump_prefix, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* @PROF_DUMP_FILENAME_LEN, align 4
  %38 = sub nsw i32 %37, 1
  %39 = call i32 @strncpy(i8* %35, i8* %36, i32 %38)
  %40 = load i8*, i8** @prof_dump_prefix, align 8
  %41 = load i32, i32* @PROF_DUMP_FILENAME_LEN, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  store i8 0, i8* %44, align 1
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @malloc_mutex_unlock(i32* %45, i32* @prof_dump_filename_mtx)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %30, %25
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @cassert(i32) #1

declare dso_local i32 @ctl_mtx_assert_held(i32*) #1

declare dso_local i32 @malloc_mutex_lock(i32*, i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

declare dso_local i8* @base_alloc(i32*, i32, i32, i32) #1

declare dso_local i32 @b0get(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
