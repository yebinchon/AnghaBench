; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_prof.c_prof_boot2.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_prof.c_prof_boot2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config_prof = common dso_local global i32 0, align 4
@opt_prof = common dso_local global i64 0, align 8
@opt_lg_prof_sample = common dso_local global i32 0, align 4
@lg_prof_sample = common dso_local global i32 0, align 4
@opt_prof_active = common dso_local global i32 0, align 4
@prof_active = common dso_local global i32 0, align 4
@prof_active_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"prof_active\00", align 1
@WITNESS_RANK_PROF_ACTIVE = common dso_local global i32 0, align 4
@malloc_mutex_rank_exclusive = common dso_local global i32 0, align 4
@opt_prof_gdump = common dso_local global i32 0, align 4
@prof_gdump_val = common dso_local global i32 0, align 4
@prof_gdump_mtx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"prof_gdump\00", align 1
@WITNESS_RANK_PROF_GDUMP = common dso_local global i32 0, align 4
@opt_prof_thread_active_init = common dso_local global i32 0, align 4
@prof_thread_active_init = common dso_local global i32 0, align 4
@prof_thread_active_init_mtx = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"prof_thread_active_init\00", align 1
@WITNESS_RANK_PROF_THREAD_ACTIVE_INIT = common dso_local global i32 0, align 4
@bt2gctx_mtx = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"prof_bt2gctx\00", align 1
@WITNESS_RANK_PROF_BT2GCTX = common dso_local global i32 0, align 4
@tdatas_mtx = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"prof_tdatas\00", align 1
@WITNESS_RANK_PROF_TDATAS = common dso_local global i32 0, align 4
@next_thr_uid = common dso_local global i64 0, align 8
@next_thr_uid_mtx = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"prof_next_thr_uid\00", align 1
@WITNESS_RANK_PROF_NEXT_THR_UID = common dso_local global i32 0, align 4
@prof_dump_filename_mtx = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"prof_dump_filename\00", align 1
@WITNESS_RANK_PROF_DUMP_FILENAME = common dso_local global i32 0, align 4
@prof_dump_mtx = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"prof_dump\00", align 1
@WITNESS_RANK_PROF_DUMP = common dso_local global i32 0, align 4
@opt_prof_final = common dso_local global i64 0, align 8
@opt_prof_prefix = common dso_local global i8* null, align 8
@prof_fdump = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"<jemalloc>: Error in atexit()\0A\00", align 1
@opt_abort = common dso_local global i64 0, align 8
@PROF_NCTX_LOCKS = common dso_local global i32 0, align 4
@CACHELINE = common dso_local global i32 0, align 4
@gctx_locks = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c"prof_gctx\00", align 1
@WITNESS_RANK_PROF_GCTX = common dso_local global i32 0, align 4
@PROF_NTDATA_LOCKS = common dso_local global i32 0, align 4
@tdata_locks = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"prof_tdata\00", align 1
@WITNESS_RANK_PROF_TDATA = common dso_local global i32 0, align 4
@prof_booted = common dso_local global i32 0, align 4
@prof_unwind_init_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prof_boot2(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32, i32* @config_prof, align 4
  %6 = call i32 @cassert(i32 %5)
  %7 = load i64, i64* @opt_prof, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %158

9:                                                ; preds = %1
  %10 = load i32, i32* @opt_lg_prof_sample, align 4
  store i32 %10, i32* @lg_prof_sample, align 4
  %11 = load i32, i32* @opt_prof_active, align 4
  store i32 %11, i32* @prof_active, align 4
  %12 = load i32, i32* @WITNESS_RANK_PROF_ACTIVE, align 4
  %13 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %14 = call i64 @malloc_mutex_init(i32* @prof_active_mtx, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %159

17:                                               ; preds = %9
  %18 = load i32, i32* @opt_prof_gdump, align 4
  store i32 %18, i32* @prof_gdump_val, align 4
  %19 = load i32, i32* @WITNESS_RANK_PROF_GDUMP, align 4
  %20 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %21 = call i64 @malloc_mutex_init(i32* @prof_gdump_mtx, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %159

24:                                               ; preds = %17
  %25 = load i32, i32* @opt_prof_thread_active_init, align 4
  store i32 %25, i32* @prof_thread_active_init, align 4
  %26 = load i32, i32* @WITNESS_RANK_PROF_THREAD_ACTIVE_INIT, align 4
  %27 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %28 = call i64 @malloc_mutex_init(i32* @prof_thread_active_init_mtx, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %159

31:                                               ; preds = %24
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @prof_data_init(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %159

36:                                               ; preds = %31
  %37 = load i32, i32* @WITNESS_RANK_PROF_BT2GCTX, align 4
  %38 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %39 = call i64 @malloc_mutex_init(i32* @bt2gctx_mtx, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %159

42:                                               ; preds = %36
  %43 = load i32, i32* @WITNESS_RANK_PROF_TDATAS, align 4
  %44 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %45 = call i64 @malloc_mutex_init(i32* @tdatas_mtx, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %159

48:                                               ; preds = %42
  store i64 0, i64* @next_thr_uid, align 8
  %49 = load i32, i32* @WITNESS_RANK_PROF_NEXT_THR_UID, align 4
  %50 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %51 = call i64 @malloc_mutex_init(i32* @next_thr_uid_mtx, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 1, i32* %2, align 4
  br label %159

54:                                               ; preds = %48
  %55 = load i32, i32* @WITNESS_RANK_PROF_DUMP_FILENAME, align 4
  %56 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %57 = call i64 @malloc_mutex_init(i32* @prof_dump_filename_mtx, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 1, i32* %2, align 4
  br label %159

60:                                               ; preds = %54
  %61 = load i32, i32* @WITNESS_RANK_PROF_DUMP, align 4
  %62 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %63 = call i64 @malloc_mutex_init(i32* @prof_dump_mtx, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 1, i32* %2, align 4
  br label %159

66:                                               ; preds = %60
  %67 = load i64, i64* @opt_prof_final, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %66
  %70 = load i8*, i8** @opt_prof_prefix, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load i32, i32* @prof_fdump, align 4
  %77 = call i64 @atexit(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = call i32 @malloc_write(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %81 = load i64, i64* @opt_abort, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = call i32 (...) @abort() #3
  unreachable

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85, %75, %69, %66
  %87 = load i32*, i32** %3, align 8
  %88 = call i64 @prof_log_init(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 1, i32* %2, align 4
  br label %159

91:                                               ; preds = %86
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @tsd_tsdn(i32* %92)
  %94 = call i32 (...) @b0get()
  %95 = load i32, i32* @PROF_NCTX_LOCKS, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 4
  %98 = trunc i64 %97 to i32
  %99 = load i32, i32* @CACHELINE, align 4
  %100 = call i64 @base_alloc(i32 %93, i32 %94, i32 %98, i32 %99)
  %101 = inttoptr i64 %100 to i32*
  store i32* %101, i32** @gctx_locks, align 8
  %102 = load i32*, i32** @gctx_locks, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  store i32 1, i32* %2, align 4
  br label %159

105:                                              ; preds = %91
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %121, %105
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @PROF_NCTX_LOCKS, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %106
  %111 = load i32*, i32** @gctx_locks, align 8
  %112 = load i32, i32* %4, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* @WITNESS_RANK_PROF_GCTX, align 4
  %116 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %117 = call i64 @malloc_mutex_init(i32* %114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  store i32 1, i32* %2, align 4
  br label %159

120:                                              ; preds = %110
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %4, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %4, align 4
  br label %106

124:                                              ; preds = %106
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 @tsd_tsdn(i32* %125)
  %127 = call i32 (...) @b0get()
  %128 = load i32, i32* @PROF_NTDATA_LOCKS, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 4
  %131 = trunc i64 %130 to i32
  %132 = load i32, i32* @CACHELINE, align 4
  %133 = call i64 @base_alloc(i32 %126, i32 %127, i32 %131, i32 %132)
  %134 = inttoptr i64 %133 to i32*
  store i32* %134, i32** @tdata_locks, align 8
  %135 = load i32*, i32** @tdata_locks, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %124
  store i32 1, i32* %2, align 4
  br label %159

138:                                              ; preds = %124
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %154, %138
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @PROF_NTDATA_LOCKS, align 4
  %142 = icmp ult i32 %140, %141
  br i1 %142, label %143, label %157

143:                                              ; preds = %139
  %144 = load i32*, i32** @tdata_locks, align 8
  %145 = load i32, i32* %4, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* @WITNESS_RANK_PROF_TDATA, align 4
  %149 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %150 = call i64 @malloc_mutex_init(i32* %147, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %143
  store i32 1, i32* %2, align 4
  br label %159

153:                                              ; preds = %143
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %4, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %4, align 4
  br label %139

157:                                              ; preds = %139
  br label %158

158:                                              ; preds = %157, %1
  store i32 1, i32* @prof_booted, align 4
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %158, %152, %137, %119, %104, %90, %65, %59, %53, %47, %41, %35, %30, %23, %16
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @cassert(i32) #1

declare dso_local i64 @malloc_mutex_init(i32*, i8*, i32, i32) #1

declare dso_local i64 @prof_data_init(i32*) #1

declare dso_local i64 @atexit(i32) #1

declare dso_local i32 @malloc_write(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @prof_log_init(i32*) #1

declare dso_local i64 @base_alloc(i32, i32, i32, i32) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32 @b0get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
