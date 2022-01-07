; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_ctl.c_stats_mutexes_reset_ctl.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_ctl.c_stats_mutexes_reset_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_19__*, %struct.TYPE_18__*, i32, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@config_stats = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ctl_mtx = common dso_local global i32 0, align 4
@have_background_thread = common dso_local global i64 0, align 8
@background_thread_lock = common dso_local global i32 0, align 4
@config_prof = common dso_local global i64 0, align 8
@opt_prof = common dso_local global i64 0, align 8
@bt2gctx_mtx = common dso_local global i32 0, align 4
@tdatas_mtx = common dso_local global i32 0, align 4
@prof_dump_mtx = common dso_local global i32 0, align 4
@SC_NBINS = common dso_local global i64 0, align 8
@bin_infos = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i64, i8*, i64*, i8*, i64)* @stats_mutexes_reset_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stats_mutexes_reset_ctl(i32* %0, i64* %1, i64 %2, i8* %3, i64* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_21__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_20__*, align 8
  store i32* %0, i32** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64* %4, i64** %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %23 = load i32, i32* @config_stats, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %7
  %26 = load i32, i32* @ENOENT, align 4
  store i32 %26, i32* %8, align 4
  br label %261

27:                                               ; preds = %7
  %28 = load i32*, i32** %9, align 8
  %29 = call i32* @tsd_tsdn(i32* %28)
  store i32* %29, i32** %16, align 8
  %30 = load i32*, i32** %16, align 8
  %31 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_lock to i32 (i32*, i32*, ...)*)(i32* %30, i32* @ctl_mtx)
  %32 = load i32*, i32** %16, align 8
  %33 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_prof_data_reset to i32 (i32*, i32*, ...)*)(i32* %32, i32* @ctl_mtx)
  %34 = load i32*, i32** %16, align 8
  %35 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_unlock to i32 (i32*, i32*, ...)*)(i32* %34, i32* @ctl_mtx)
  %36 = load i64, i64* @have_background_thread, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %27
  %39 = load i32*, i32** %16, align 8
  %40 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_lock to i32 (i32*, i32*, ...)*)(i32* %39, i32* @background_thread_lock)
  %41 = load i32*, i32** %16, align 8
  %42 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_prof_data_reset to i32 (i32*, i32*, ...)*)(i32* %41, i32* @background_thread_lock)
  %43 = load i32*, i32** %16, align 8
  %44 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_unlock to i32 (i32*, i32*, ...)*)(i32* %43, i32* @background_thread_lock)
  br label %45

45:                                               ; preds = %38, %27
  %46 = load i64, i64* @config_prof, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %45
  %49 = load i64, i64* @opt_prof, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %48
  %52 = load i32*, i32** %16, align 8
  %53 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_lock to i32 (i32*, i32*, ...)*)(i32* %52, i32* @bt2gctx_mtx)
  %54 = load i32*, i32** %16, align 8
  %55 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_prof_data_reset to i32 (i32*, i32*, ...)*)(i32* %54, i32* @bt2gctx_mtx)
  %56 = load i32*, i32** %16, align 8
  %57 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_unlock to i32 (i32*, i32*, ...)*)(i32* %56, i32* @bt2gctx_mtx)
  %58 = load i32*, i32** %16, align 8
  %59 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_lock to i32 (i32*, i32*, ...)*)(i32* %58, i32* @tdatas_mtx)
  %60 = load i32*, i32** %16, align 8
  %61 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_prof_data_reset to i32 (i32*, i32*, ...)*)(i32* %60, i32* @tdatas_mtx)
  %62 = load i32*, i32** %16, align 8
  %63 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_unlock to i32 (i32*, i32*, ...)*)(i32* %62, i32* @tdatas_mtx)
  %64 = load i32*, i32** %16, align 8
  %65 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_lock to i32 (i32*, i32*, ...)*)(i32* %64, i32* @prof_dump_mtx)
  %66 = load i32*, i32** %16, align 8
  %67 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_prof_data_reset to i32 (i32*, i32*, ...)*)(i32* %66, i32* @prof_dump_mtx)
  %68 = load i32*, i32** %16, align 8
  %69 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_unlock to i32 (i32*, i32*, ...)*)(i32* %68, i32* @prof_dump_mtx)
  br label %70

70:                                               ; preds = %51, %48, %45
  %71 = call i32 (...) @narenas_total_get()
  store i32 %71, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %72

72:                                               ; preds = %257, %70
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* %17, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %260

76:                                               ; preds = %72
  %77 = load i32*, i32** %16, align 8
  %78 = load i32, i32* %18, align 4
  %79 = call %struct.TYPE_21__* @arena_get(i32* %77, i32 %78, i32 0)
  store %struct.TYPE_21__* %79, %struct.TYPE_21__** %19, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %81 = icmp ne %struct.TYPE_21__* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %76
  br label %257

83:                                               ; preds = %76
  %84 = load i32*, i32** %16, align 8
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 9
  %87 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_lock to i32 (i32*, i32*, ...)*)(i32* %84, i32* %86)
  %88 = load i32*, i32** %16, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 9
  %91 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_prof_data_reset to i32 (i32*, i32*, ...)*)(i32* %88, i32* %90)
  %92 = load i32*, i32** %16, align 8
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 9
  %95 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_unlock to i32 (i32*, i32*, ...)*)(i32* %92, i32* %94)
  %96 = load i32*, i32** %16, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 8
  %99 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_lock to i32 (i32*, i32*, ...)*)(i32* %96, i32* %98)
  %100 = load i32*, i32** %16, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 8
  %103 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_prof_data_reset to i32 (i32*, i32*, ...)*)(i32* %100, i32* %102)
  %104 = load i32*, i32** %16, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 8
  %107 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_unlock to i32 (i32*, i32*, ...)*)(i32* %104, i32* %106)
  %108 = load i32*, i32** %16, align 8
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 7
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_lock to i32 (i32*, i32*, ...)*)(i32* %108, i32* %111)
  %113 = load i32*, i32** %16, align 8
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 7
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_prof_data_reset to i32 (i32*, i32*, ...)*)(i32* %113, i32* %116)
  %118 = load i32*, i32** %16, align 8
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_unlock to i32 (i32*, i32*, ...)*)(i32* %118, i32* %121)
  %123 = load i32*, i32** %16, align 8
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 6
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_lock to i32 (i32*, i32*, ...)*)(i32* %123, i32* %126)
  %128 = load i32*, i32** %16, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 6
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_prof_data_reset to i32 (i32*, i32*, ...)*)(i32* %128, i32* %131)
  %133 = load i32*, i32** %16, align 8
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 6
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_unlock to i32 (i32*, i32*, ...)*)(i32* %133, i32* %136)
  %138 = load i32*, i32** %16, align 8
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_lock to i32 (i32*, i32*, ...)*)(i32* %138, i32* %141)
  %143 = load i32*, i32** %16, align 8
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_prof_data_reset to i32 (i32*, i32*, ...)*)(i32* %143, i32* %146)
  %148 = load i32*, i32** %16, align 8
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_unlock to i32 (i32*, i32*, ...)*)(i32* %148, i32* %151)
  %153 = load i32*, i32** %16, align 8
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_lock to i32 (i32*, i32*, ...)*)(i32* %153, i32* %156)
  %158 = load i32*, i32** %16, align 8
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_prof_data_reset to i32 (i32*, i32*, ...)*)(i32* %158, i32* %161)
  %163 = load i32*, i32** %16, align 8
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  %167 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_unlock to i32 (i32*, i32*, ...)*)(i32* %163, i32* %166)
  %168 = load i32*, i32** %16, align 8
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 0
  %172 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_lock to i32 (i32*, i32*, ...)*)(i32* %168, i32* %171)
  %173 = load i32*, i32** %16, align 8
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 0
  %177 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_prof_data_reset to i32 (i32*, i32*, ...)*)(i32* %173, i32* %176)
  %178 = load i32*, i32** %16, align 8
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 0
  %182 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_unlock to i32 (i32*, i32*, ...)*)(i32* %178, i32* %181)
  %183 = load i32*, i32** %16, align 8
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 2
  %186 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_lock to i32 (i32*, i32*, ...)*)(i32* %183, i32* %185)
  %187 = load i32*, i32** %16, align 8
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 2
  %190 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_prof_data_reset to i32 (i32*, i32*, ...)*)(i32* %187, i32* %189)
  %191 = load i32*, i32** %16, align 8
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 2
  %194 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_unlock to i32 (i32*, i32*, ...)*)(i32* %191, i32* %193)
  %195 = load i32*, i32** %16, align 8
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 0
  %200 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_lock to i32 (i32*, i32*, ...)*)(i32* %195, i32* %199)
  %201 = load i32*, i32** %16, align 8
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 0
  %206 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_prof_data_reset to i32 (i32*, i32*, ...)*)(i32* %201, i32* %205)
  %207 = load i32*, i32** %16, align 8
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 0
  %212 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_unlock to i32 (i32*, i32*, ...)*)(i32* %207, i32* %211)
  store i64 0, i64* %20, align 8
  br label %213

213:                                              ; preds = %253, %83
  %214 = load i64, i64* %20, align 8
  %215 = load i64, i64* @SC_NBINS, align 8
  %216 = icmp ult i64 %214, %215
  br i1 %216, label %217, label %256

217:                                              ; preds = %213
  store i32 0, i32* %21, align 4
  br label %218

218:                                              ; preds = %249, %217
  %219 = load i32, i32* %21, align 4
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** @bin_infos, align 8
  %221 = load i64, i64* %20, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = icmp ult i32 %219, %224
  br i1 %225, label %226, label %252

226:                                              ; preds = %218
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %228, align 8
  %230 = load i64, i64* %20, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %232, align 8
  %234 = load i32, i32* %21, align 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i64 %235
  store %struct.TYPE_20__* %236, %struct.TYPE_20__** %22, align 8
  %237 = load i32*, i32** %16, align 8
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 0
  %240 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_lock to i32 (i32*, i32*, ...)*)(i32* %237, i32* %239)
  %241 = load i32*, i32** %16, align 8
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 0
  %244 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_prof_data_reset to i32 (i32*, i32*, ...)*)(i32* %241, i32* %243)
  %245 = load i32*, i32** %16, align 8
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %246, i32 0, i32 0
  %248 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @malloc_mutex_unlock to i32 (i32*, i32*, ...)*)(i32* %245, i32* %247)
  br label %249

249:                                              ; preds = %226
  %250 = load i32, i32* %21, align 4
  %251 = add i32 %250, 1
  store i32 %251, i32* %21, align 4
  br label %218

252:                                              ; preds = %218
  br label %253

253:                                              ; preds = %252
  %254 = load i64, i64* %20, align 8
  %255 = add i64 %254, 1
  store i64 %255, i64* %20, align 8
  br label %213

256:                                              ; preds = %213
  br label %257

257:                                              ; preds = %256, %82
  %258 = load i32, i32* %18, align 4
  %259 = add i32 %258, 1
  store i32 %259, i32* %18, align 4
  br label %72

260:                                              ; preds = %72
  store i32 0, i32* %8, align 4
  br label %261

261:                                              ; preds = %260, %25
  %262 = load i32, i32* %8, align 4
  ret i32 %262
}

declare dso_local i32* @tsd_tsdn(i32*) #1

declare dso_local i32 @malloc_mutex_lock(...) #1

declare dso_local i32 @malloc_mutex_prof_data_reset(...) #1

declare dso_local i32 @malloc_mutex_unlock(...) #1

declare dso_local i32 @narenas_total_get(...) #1

declare dso_local %struct.TYPE_21__* @arena_get(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
