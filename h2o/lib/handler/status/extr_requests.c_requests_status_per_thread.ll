; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/status/extr_requests.c_requests_status_per_thread.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/status/extr_requests.c_requests_status_per_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_19__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 (%struct.TYPE_26__*, i32, %struct.st_collect_req_status_cbdata_t*)* }
%struct.st_collect_req_status_cbdata_t = type { %struct.TYPE_17__*, i32* }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 (%struct.TYPE_26__*, i32, %struct.st_collect_req_status_cbdata_t*)* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 (%struct.TYPE_26__*, i32, %struct.st_collect_req_status_cbdata_t*)* }
%struct.st_requests_status_ctx_t = type { i32, %struct.TYPE_25__, i32* }
%struct.TYPE_25__ = type { i64, i64 }

@h2o_socket_buffer_prototype = common dso_local global i32 0, align 4
@collect_req_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_26__*)* @requests_status_per_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @requests_status_per_thread(i8* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.st_requests_status_ctx_t*, align 8
  %6 = alloca %struct.st_collect_req_status_cbdata_t, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.st_requests_status_ctx_t*
  store %struct.st_requests_status_ctx_t* %8, %struct.st_requests_status_ctx_t** %5, align 8
  %9 = getelementptr inbounds %struct.st_collect_req_status_cbdata_t, %struct.st_collect_req_status_cbdata_t* %6, i32 0, i32 0
  %10 = load %struct.st_requests_status_ctx_t*, %struct.st_requests_status_ctx_t** %5, align 8
  %11 = getelementptr inbounds %struct.st_requests_status_ctx_t, %struct.st_requests_status_ctx_t* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %9, align 8
  %14 = getelementptr inbounds %struct.st_collect_req_status_cbdata_t, %struct.st_collect_req_status_cbdata_t* %6, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load %struct.st_requests_status_ctx_t*, %struct.st_requests_status_ctx_t** %5, align 8
  %16 = getelementptr inbounds %struct.st_requests_status_ctx_t, %struct.st_requests_status_ctx_t* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %130

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.st_collect_req_status_cbdata_t, %struct.st_collect_req_status_cbdata_t* %6, i32 0, i32 0
  %22 = call i32 @h2o_buffer_init(%struct.TYPE_17__** %21, i32* @h2o_socket_buffer_prototype)
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i64 (%struct.TYPE_26__*, i32, %struct.st_collect_req_status_cbdata_t*)*, i64 (%struct.TYPE_26__*, i32, %struct.st_collect_req_status_cbdata_t*)** %28, align 8
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %31 = load i32, i32* @collect_req_status, align 4
  %32 = call i64 %29(%struct.TYPE_26__* %30, i32 %31, %struct.st_collect_req_status_cbdata_t* %6)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %58, label %34

34:                                               ; preds = %20
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i64 (%struct.TYPE_26__*, i32, %struct.st_collect_req_status_cbdata_t*)*, i64 (%struct.TYPE_26__*, i32, %struct.st_collect_req_status_cbdata_t*)** %40, align 8
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %43 = load i32, i32* @collect_req_status, align 4
  %44 = call i64 %41(%struct.TYPE_26__* %42, i32 %43, %struct.st_collect_req_status_cbdata_t* %6)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %34
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load i64 (%struct.TYPE_26__*, i32, %struct.st_collect_req_status_cbdata_t*)*, i64 (%struct.TYPE_26__*, i32, %struct.st_collect_req_status_cbdata_t*)** %52, align 8
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %55 = load i32, i32* @collect_req_status, align 4
  %56 = call i64 %53(%struct.TYPE_26__* %54, i32 %55, %struct.st_collect_req_status_cbdata_t* %6)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %46, %34, %20
  %59 = getelementptr inbounds %struct.st_collect_req_status_cbdata_t, %struct.st_collect_req_status_cbdata_t* %6, i32 0, i32 0
  %60 = call i32 @h2o_buffer_dispose(%struct.TYPE_17__** %59)
  br label %130

61:                                               ; preds = %46
  %62 = getelementptr inbounds %struct.st_collect_req_status_cbdata_t, %struct.st_collect_req_status_cbdata_t* %6, i32 0, i32 0
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %127

67:                                               ; preds = %61
  %68 = load %struct.st_requests_status_ctx_t*, %struct.st_requests_status_ctx_t** %5, align 8
  %69 = getelementptr inbounds %struct.st_requests_status_ctx_t, %struct.st_requests_status_ctx_t* %68, i32 0, i32 0
  %70 = call i32 @pthread_mutex_lock(i32* %69)
  %71 = load %struct.st_requests_status_ctx_t*, %struct.st_requests_status_ctx_t** %5, align 8
  %72 = getelementptr inbounds %struct.st_requests_status_ctx_t, %struct.st_requests_status_ctx_t* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.st_collect_req_status_cbdata_t, %struct.st_collect_req_status_cbdata_t* %6, i32 0, i32 0
  %78 = call i32 @h2o_buffer_consume(%struct.TYPE_17__** %77, i32 1)
  br label %79

79:                                               ; preds = %76, %67
  %80 = load %struct.st_requests_status_ctx_t*, %struct.st_requests_status_ctx_t** %5, align 8
  %81 = getelementptr inbounds %struct.st_requests_status_ctx_t, %struct.st_requests_status_ctx_t* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.st_requests_status_ctx_t*, %struct.st_requests_status_ctx_t** %5, align 8
  %85 = getelementptr inbounds %struct.st_requests_status_ctx_t, %struct.st_requests_status_ctx_t* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.st_collect_req_status_cbdata_t, %struct.st_collect_req_status_cbdata_t* %6, i32 0, i32 0
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %87, %91
  %93 = call i64 @h2o_mem_realloc(i64 %83, i64 %92)
  %94 = load %struct.st_requests_status_ctx_t*, %struct.st_requests_status_ctx_t** %5, align 8
  %95 = getelementptr inbounds %struct.st_requests_status_ctx_t, %struct.st_requests_status_ctx_t* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 1
  store i64 %93, i64* %96, align 8
  %97 = load %struct.st_requests_status_ctx_t*, %struct.st_requests_status_ctx_t** %5, align 8
  %98 = getelementptr inbounds %struct.st_requests_status_ctx_t, %struct.st_requests_status_ctx_t* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.st_requests_status_ctx_t*, %struct.st_requests_status_ctx_t** %5, align 8
  %102 = getelementptr inbounds %struct.st_requests_status_ctx_t, %struct.st_requests_status_ctx_t* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %100, %104
  %106 = getelementptr inbounds %struct.st_collect_req_status_cbdata_t, %struct.st_collect_req_status_cbdata_t* %6, i32 0, i32 0
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.st_collect_req_status_cbdata_t, %struct.st_collect_req_status_cbdata_t* %6, i32 0, i32 0
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @memcpy(i64 %105, i32 %109, i64 %113)
  %115 = getelementptr inbounds %struct.st_collect_req_status_cbdata_t, %struct.st_collect_req_status_cbdata_t* %6, i32 0, i32 0
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.st_requests_status_ctx_t*, %struct.st_requests_status_ctx_t** %5, align 8
  %120 = getelementptr inbounds %struct.st_requests_status_ctx_t, %struct.st_requests_status_ctx_t* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, %118
  store i64 %123, i64* %121, align 8
  %124 = load %struct.st_requests_status_ctx_t*, %struct.st_requests_status_ctx_t** %5, align 8
  %125 = getelementptr inbounds %struct.st_requests_status_ctx_t, %struct.st_requests_status_ctx_t* %124, i32 0, i32 0
  %126 = call i32 @pthread_mutex_unlock(i32* %125)
  br label %127

127:                                              ; preds = %79, %61
  %128 = getelementptr inbounds %struct.st_collect_req_status_cbdata_t, %struct.st_collect_req_status_cbdata_t* %6, i32 0, i32 0
  %129 = call i32 @h2o_buffer_dispose(%struct.TYPE_17__** %128)
  br label %130

130:                                              ; preds = %127, %58, %19
  ret void
}

declare dso_local i32 @h2o_buffer_init(%struct.TYPE_17__**, i32*) #1

declare dso_local i32 @h2o_buffer_dispose(%struct.TYPE_17__**) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @h2o_buffer_consume(%struct.TYPE_17__**, i32) #1

declare dso_local i64 @h2o_mem_realloc(i64, i64) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
