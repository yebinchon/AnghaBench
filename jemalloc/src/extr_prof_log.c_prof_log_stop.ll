; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_prof_log.c_prof_log_stop.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_prof_log.c_prof_log_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prof_emitter_cb_arg_s = type { i32, i32 }
%struct.TYPE_4__ = type { i8*, i32, i32, %struct.prof_emitter_cb_arg_s*, i32 }

@opt_prof = common dso_local global i32 0, align 4
@prof_booted = common dso_local global i32 0, align 4
@log_mtx = common dso_local global i32 0, align 4
@prof_logging_state = common dso_local global i64 0, align 8
@prof_logging_state_started = common dso_local global i64 0, align 8
@prof_logging_state_dumping = common dso_local global i64 0, align 8
@log_filename = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"<jemalloc>: creat() for log file \22%s\22  failed with %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@opt_abort = common dso_local global i64 0, align 8
@PROF_LOG_STOP_BUFSIZE = common dso_local global i32 0, align 4
@TSDN_NULL = common dso_local global i32 0, align 4
@prof_emitter_write_cb = common dso_local global i32 0, align 4
@emitter_output_json_compact = common dso_local global i32 0, align 4
@buffered_write_cb = common dso_local global i32 0, align 4
@log_tables_initialized = common dso_local global i32 0, align 4
@log_bt_node_set = common dso_local global i32 0, align 4
@log_thr_node_set = common dso_local global i32 0, align 4
@log_bt_index = common dso_local global i64 0, align 8
@log_thr_index = common dso_local global i64 0, align 8
@log_bt_first = common dso_local global i32* null, align 8
@log_bt_last = common dso_local global i32* null, align 8
@log_thr_first = common dso_local global i32* null, align 8
@log_thr_last = common dso_local global i32* null, align 8
@log_alloc_first = common dso_local global i32* null, align 8
@log_alloc_last = common dso_local global i32* null, align 8
@prof_logging_state_stopped = common dso_local global i64 0, align 8
@prof_log_dummy = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prof_log_stop(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.prof_emitter_cb_arg_s, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32, i32* @opt_prof, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @prof_booted, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %1
  store i32 1, i32* %2, align 4
  br label %109

16:                                               ; preds = %12
  %17 = load i32*, i32** %3, align 8
  %18 = call i32* @tsdn_tsd(i32* %17)
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @malloc_mutex_lock(i32* %19, i32* @log_mtx)
  %21 = load i64, i64* @prof_logging_state, align 8
  %22 = load i64, i64* @prof_logging_state_started, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @malloc_mutex_unlock(i32* %25, i32* @log_mtx)
  store i32 1, i32* %2, align 4
  br label %109

27:                                               ; preds = %16
  %28 = load i64, i64* @prof_logging_state_dumping, align 8
  store i64 %28, i64* @prof_logging_state, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @malloc_mutex_unlock(i32* %29, i32* @log_mtx)
  %31 = load i32, i32* @log_filename, align 4
  %32 = call i32 @creat(i32 %31, i32 420)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = load i32, i32* @log_filename, align 4
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 @malloc_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i64, i64* @opt_abort, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 (...) @abort() #3
  unreachable

43:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %109

44:                                               ; preds = %27
  %45 = load i32, i32* %6, align 4
  %46 = getelementptr inbounds %struct.prof_emitter_cb_arg_s, %struct.prof_emitter_cb_arg_s* %7, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* @PROF_LOG_STOP_BUFSIZE, align 4
  %49 = load i32, i32* @PROF_LOG_STOP_BUFSIZE, align 4
  %50 = call i32 @sz_size2index(i32 %49)
  %51 = load i32, i32* @TSDN_NULL, align 4
  %52 = call i32 @arena_get(i32 %51, i32 0, i32 1)
  %53 = call i64 @iallocztm(i32* %47, i32 %48, i32 %50, i32 0, i32* null, i32 1, i32 %52, i32 1)
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %56 = load i32, i32* @prof_emitter_write_cb, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  store i8* %58, i8** %55, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %60 = ptrtoint %struct.prof_emitter_cb_arg_s* %7 to i32
  store i32 %60, i32* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %62 = load i8*, i8** %8, align 8
  %63 = ptrtoint i8* %62 to i32
  store i32 %63, i32* %61, align 4
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %65 = load i32, i32* @PROF_LOG_STOP_BUFSIZE, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to %struct.prof_emitter_cb_arg_s*
  store %struct.prof_emitter_cb_arg_s* %68, %struct.prof_emitter_cb_arg_s** %64, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 4
  store i32 0, i32* %69, align 8
  %70 = load i32, i32* @emitter_output_json_compact, align 4
  %71 = load i32, i32* @buffered_write_cb, align 4
  %72 = call i32 @emitter_init(i32* %5, i32 %70, i32 %71, %struct.TYPE_4__* %9)
  %73 = call i32 @emitter_begin(i32* %5)
  %74 = call i32 @prof_log_emit_metadata(i32* %5)
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @prof_log_emit_threads(i32* %75, i32* %5)
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @prof_log_emit_traces(i32* %77, i32* %5)
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @prof_log_emit_allocs(i32* %79, i32* %5)
  %81 = call i32 @emitter_end(i32* %5)
  %82 = call i32 @buf_writer_flush(%struct.TYPE_4__* %9)
  %83 = load i32*, i32** %3, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 @idalloctm(i32* %83, i8* %84, i32* null, i32* null, i32 1, i32 1)
  %86 = load i32, i32* @log_tables_initialized, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %44
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @ckh_delete(i32* %89, i32* @log_bt_node_set)
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @ckh_delete(i32* %91, i32* @log_thr_node_set)
  br label %93

93:                                               ; preds = %88, %44
  store i32 0, i32* @log_tables_initialized, align 4
  store i64 0, i64* @log_bt_index, align 8
  store i64 0, i64* @log_thr_index, align 8
  store i32* null, i32** @log_bt_first, align 8
  store i32* null, i32** @log_bt_last, align 8
  store i32* null, i32** @log_thr_first, align 8
  store i32* null, i32** @log_thr_last, align 8
  store i32* null, i32** @log_alloc_first, align 8
  store i32* null, i32** @log_alloc_last, align 8
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @malloc_mutex_lock(i32* %94, i32* @log_mtx)
  %96 = load i64, i64* @prof_logging_state_stopped, align 8
  store i64 %96, i64* @prof_logging_state, align 8
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 @malloc_mutex_unlock(i32* %97, i32* @log_mtx)
  %99 = load i32, i32* %6, align 4
  %100 = call i64 @close(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %93
  %103 = getelementptr inbounds %struct.prof_emitter_cb_arg_s, %struct.prof_emitter_cb_arg_s* %7, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, -1
  br label %106

106:                                              ; preds = %102, %93
  %107 = phi i1 [ true, %93 ], [ %105, %102 ]
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %106, %43, %24, %15
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32* @tsdn_tsd(i32*) #1

declare dso_local i32 @malloc_mutex_lock(i32*, i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

declare dso_local i32 @creat(i32, i32) #1

declare dso_local i32 @malloc_printf(i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @iallocztm(i32*, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @sz_size2index(i32) #1

declare dso_local i32 @arena_get(i32, i32, i32) #1

declare dso_local i32 @emitter_init(i32*, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @emitter_begin(i32*) #1

declare dso_local i32 @prof_log_emit_metadata(i32*) #1

declare dso_local i32 @prof_log_emit_threads(i32*, i32*) #1

declare dso_local i32 @prof_log_emit_traces(i32*, i32*) #1

declare dso_local i32 @prof_log_emit_allocs(i32*, i32*) #1

declare dso_local i32 @emitter_end(i32*) #1

declare dso_local i32 @buf_writer_flush(%struct.TYPE_4__*) #1

declare dso_local i32 @idalloctm(i32*, i8*, i32*, i32*, i32, i32) #1

declare dso_local i32 @ckh_delete(i32*, i32*) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
