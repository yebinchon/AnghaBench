; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_prof.c_prof_postfork_parent.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_prof.c_prof_postfork_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config_prof = common dso_local global i64 0, align 8
@opt_prof = common dso_local global i64 0, align 8
@prof_thread_active_init_mtx = common dso_local global i32 0, align 4
@next_thr_uid_mtx = common dso_local global i32 0, align 4
@prof_gdump_mtx = common dso_local global i32 0, align 4
@prof_dump_filename_mtx = common dso_local global i32 0, align 4
@prof_active_mtx = common dso_local global i32 0, align 4
@PROF_NCTX_LOCKS = common dso_local global i32 0, align 4
@gctx_locks = common dso_local global i32* null, align 8
@PROF_NTDATA_LOCKS = common dso_local global i32 0, align 4
@tdata_locks = common dso_local global i32* null, align 8
@tdatas_mtx = common dso_local global i32 0, align 4
@bt2gctx_mtx = common dso_local global i32 0, align 4
@prof_dump_mtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prof_postfork_parent(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i64, i64* @config_prof, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %56

6:                                                ; preds = %1
  %7 = load i64, i64* @opt_prof, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %56

9:                                                ; preds = %6
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @malloc_mutex_postfork_parent(i32* %10, i32* @prof_thread_active_init_mtx)
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @malloc_mutex_postfork_parent(i32* %12, i32* @next_thr_uid_mtx)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @malloc_mutex_postfork_parent(i32* %14, i32* @prof_gdump_mtx)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @malloc_mutex_postfork_parent(i32* %16, i32* @prof_dump_filename_mtx)
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @malloc_mutex_postfork_parent(i32* %18, i32* @prof_active_mtx)
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %31, %9
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @PROF_NCTX_LOCKS, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i32*, i32** %2, align 8
  %26 = load i32*, i32** @gctx_locks, align 8
  %27 = load i32, i32* %3, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = call i32 @malloc_mutex_postfork_parent(i32* %25, i32* %29)
  br label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %20

34:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %46, %34
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @PROF_NTDATA_LOCKS, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load i32*, i32** %2, align 8
  %41 = load i32*, i32** @tdata_locks, align 8
  %42 = load i32, i32* %3, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i32 @malloc_mutex_postfork_parent(i32* %40, i32* %44)
  br label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %3, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %35

49:                                               ; preds = %35
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @malloc_mutex_postfork_parent(i32* %50, i32* @tdatas_mtx)
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @malloc_mutex_postfork_parent(i32* %52, i32* @bt2gctx_mtx)
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @malloc_mutex_postfork_parent(i32* %54, i32* @prof_dump_mtx)
  br label %56

56:                                               ; preds = %49, %6, %1
  ret void
}

declare dso_local i32 @malloc_mutex_postfork_parent(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
