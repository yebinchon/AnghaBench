; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_prof_log.c_prof_try_log.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_prof_log.c_prof_try_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_14__*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i8*, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@log_mtx = common dso_local global i32 0, align 4
@prof_logging_state = common dso_local global i64 0, align 8
@prof_logging_state_started = common dso_local global i64 0, align 8
@log_tables_initialized = common dso_local global i32 0, align 4
@log_bt_node_set = common dso_local global i32 0, align 4
@PROF_CKH_MINITEMS = common dso_local global i32 0, align 4
@prof_bt_node_hash = common dso_local global i32 0, align 4
@prof_bt_node_keycomp = common dso_local global i32 0, align 4
@log_thr_node_set = common dso_local global i32 0, align 4
@prof_thr_node_hash = common dso_local global i32 0, align 4
@prof_thr_node_keycomp = common dso_local global i32 0, align 4
@NSTIME_ZERO_INITIALIZER = common dso_local global i32 0, align 4
@TSDN_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@log_alloc_first = common dso_local global %struct.TYPE_14__* null, align 8
@log_alloc_last = common dso_local global %struct.TYPE_14__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prof_try_log(i32* %0, i8* %1, i64 %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %8, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @tsd_tsdn(i32* %21)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @malloc_mutex_assert_owner(i32 %22, i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call %struct.TYPE_12__* @prof_tdata_get(i32* %29, i32 0)
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %9, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %32 = icmp eq %struct.TYPE_12__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  br label %160

34:                                               ; preds = %4
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @tsd_tsdn(i32* %35)
  %37 = call i32 @malloc_mutex_lock(i32 %36, i32* @log_mtx)
  %38 = load i64, i64* @prof_logging_state, align 8
  %39 = load i64, i64* @prof_logging_state_started, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %156

42:                                               ; preds = %34
  %43 = load i32, i32* @log_tables_initialized, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %63, label %45

45:                                               ; preds = %42
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @PROF_CKH_MINITEMS, align 4
  %48 = load i32, i32* @prof_bt_node_hash, align 4
  %49 = load i32, i32* @prof_bt_node_keycomp, align 4
  %50 = call i32 @ckh_new(i32* %46, i32* @log_bt_node_set, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* @PROF_CKH_MINITEMS, align 4
  %53 = load i32, i32* @prof_thr_node_hash, align 4
  %54 = load i32, i32* @prof_thr_node_keycomp, align 4
  %55 = call i32 @ckh_new(i32* %51, i32* @log_thr_node_set, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %45
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58, %45
  br label %156

62:                                               ; preds = %58
  store i32 1, i32* @log_tables_initialized, align 4
  br label %63

63:                                               ; preds = %62, %42
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @tsd_tsdn(i32* %64)
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @prof_alloc_time_get(i32 %65, i8* %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* @NSTIME_ZERO_INITIALIZER, align 4
  store i32 %68, i32* %13, align 4
  %69 = call i32 @nstime_update(i32* %13)
  store i64 64, i64* %14, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @tsd_tsdn(i32* %70)
  %72 = load i64, i64* %14, align 8
  %73 = load i64, i64* %14, align 8
  %74 = call i32 @sz_size2index(i64 %73)
  %75 = load i32, i32* @TSDN_NULL, align 4
  %76 = call i32 @arena_get(i32 %75, i32 0, i32 1)
  %77 = call i64 @iallocztm(i32 %71, i64 %72, i32 %74, i32 0, i32* null, i32 1, i32 %76, i32 1)
  %78 = inttoptr i64 %77 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %78, %struct.TYPE_14__** %15, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %63
  br label %92

86:                                               ; preds = %63
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  br label %92

92:                                               ; preds = %86, %85
  %93 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %85 ], [ %91, %86 ]
  store i8* %93, i8** %16, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = call i8* @prof_thread_name_get(i32* %94)
  store i8* %95, i8** %17, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @bt_init(i32* %18, i32 %98)
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @prof_backtrace(i32* %100, i32* %18)
  store i32* %18, i32** %19, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  store i32* %105, i32** %20, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %107, align 8
  %108 = load i32*, i32** %5, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i8*, i8** %16, align 8
  %115 = call i8* @prof_log_thr_index(i32* %108, i32 %113, i8* %114)
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 7
  store i8* %115, i8** %117, align 8
  %118 = load i32*, i32** %5, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %17, align 8
  %123 = call i8* @prof_log_thr_index(i32* %118, i32 %121, i8* %122)
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 6
  store i8* %123, i8** %125, align 8
  %126 = load i32*, i32** %5, align 8
  %127 = load i32*, i32** %20, align 8
  %128 = call i8* @prof_log_bt_index(i32* %126, i32* %127)
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 5
  store i8* %128, i8** %130, align 8
  %131 = load i32*, i32** %5, align 8
  %132 = load i32*, i32** %19, align 8
  %133 = call i8* @prof_log_bt_index(i32* %131, i32* %132)
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 4
  store i8* %133, i8** %135, align 8
  %136 = call i8* @nstime_ns(i32* %12)
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 3
  store i8* %136, i8** %138, align 8
  %139 = call i8* @nstime_ns(i32* %13)
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 2
  store i8* %139, i8** %141, align 8
  %142 = load i64, i64* %7, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** @log_alloc_first, align 8
  %146 = icmp eq %struct.TYPE_14__* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %92
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  store %struct.TYPE_14__* %148, %struct.TYPE_14__** @log_alloc_first, align 8
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  store %struct.TYPE_14__* %149, %struct.TYPE_14__** @log_alloc_last, align 8
  br label %155

150:                                              ; preds = %92
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** @log_alloc_last, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  store %struct.TYPE_14__* %151, %struct.TYPE_14__** %153, align 8
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  store %struct.TYPE_14__* %154, %struct.TYPE_14__** @log_alloc_last, align 8
  br label %155

155:                                              ; preds = %150, %147
  br label %156

156:                                              ; preds = %155, %61, %41
  %157 = load i32*, i32** %5, align 8
  %158 = call i32 @tsd_tsdn(i32* %157)
  %159 = call i32 @malloc_mutex_unlock(i32 %158, i32* @log_mtx)
  br label %160

160:                                              ; preds = %156, %33
  ret void
}

declare dso_local i32 @malloc_mutex_assert_owner(i32, i32) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local %struct.TYPE_12__* @prof_tdata_get(i32*, i32) #1

declare dso_local i32 @malloc_mutex_lock(i32, i32*) #1

declare dso_local i32 @ckh_new(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @prof_alloc_time_get(i32, i8*) #1

declare dso_local i32 @nstime_update(i32*) #1

declare dso_local i64 @iallocztm(i32, i64, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @sz_size2index(i64) #1

declare dso_local i32 @arena_get(i32, i32, i32) #1

declare dso_local i8* @prof_thread_name_get(i32*) #1

declare dso_local i32 @bt_init(i32*, i32) #1

declare dso_local i32 @prof_backtrace(i32*, i32*) #1

declare dso_local i8* @prof_log_thr_index(i32*, i32, i8*) #1

declare dso_local i8* @prof_log_bt_index(i32*, i32*) #1

declare dso_local i8* @nstime_ns(i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
