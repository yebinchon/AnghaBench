; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_prof_log.c_prof_log_init.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_prof_log.c_prof_log_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opt_prof_log = common dso_local global i64 0, align 8
@prof_log_stop_final = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"<jemalloc>: Error in atexit() for logging\0A\00", align 1
@opt_abort = common dso_local global i64 0, align 8
@log_mtx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"prof_log\00", align 1
@WITNESS_RANK_PROF_LOG = common dso_local global i32 0, align 4
@malloc_mutex_rank_exclusive = common dso_local global i32 0, align 4
@log_bt_node_set = common dso_local global i32 0, align 4
@PROF_CKH_MINITEMS = common dso_local global i32 0, align 4
@prof_bt_node_hash = common dso_local global i32 0, align 4
@prof_bt_node_keycomp = common dso_local global i32 0, align 4
@log_thr_node_set = common dso_local global i32 0, align 4
@prof_thr_node_hash = common dso_local global i32 0, align 4
@prof_thr_node_keycomp = common dso_local global i32 0, align 4
@log_tables_initialized = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prof_log_init(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i64, i64* @opt_prof_log, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @tsd_tsdn(i32* %7)
  %9 = call i32 @prof_log_start(i32 %8, i32* null)
  br label %10

10:                                               ; preds = %6, %1
  %11 = load i32, i32* @prof_log_stop_final, align 4
  %12 = call i64 @atexit(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = call i32 @malloc_write(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %16 = load i64, i64* @opt_abort, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 (...) @abort() #3
  unreachable

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %10
  %22 = load i32, i32* @WITNESS_RANK_PROF_LOG, align 4
  %23 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %24 = call i64 @malloc_mutex_init(i32* @log_mtx, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %44

27:                                               ; preds = %21
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @PROF_CKH_MINITEMS, align 4
  %30 = load i32, i32* @prof_bt_node_hash, align 4
  %31 = load i32, i32* @prof_bt_node_keycomp, align 4
  %32 = call i64 @ckh_new(i32* %28, i32* @log_bt_node_set, i32 %29, i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %44

35:                                               ; preds = %27
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* @PROF_CKH_MINITEMS, align 4
  %38 = load i32, i32* @prof_thr_node_hash, align 4
  %39 = load i32, i32* @prof_thr_node_keycomp, align 4
  %40 = call i64 @ckh_new(i32* %36, i32* @log_thr_node_set, i32 %37, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %44

43:                                               ; preds = %35
  store i32 1, i32* @log_tables_initialized, align 4
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %42, %34, %26
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @prof_log_start(i32, i32*) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i64 @atexit(i32) #1

declare dso_local i32 @malloc_write(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @malloc_mutex_init(i32*, i8*, i32, i32) #1

declare dso_local i64 @ckh_new(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
