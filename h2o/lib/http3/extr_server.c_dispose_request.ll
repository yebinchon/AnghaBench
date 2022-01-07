; ModuleID = '/home/carl/AnghaBench/h2o/lib/http3/extr_server.c_dispose_request.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http3/extr_server.c_dispose_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http3_server_stream_t = type { %struct.TYPE_14__, i32*, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, i32)* }
%struct.st_h2o_http3_server_conn_t = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_http3_server_stream_t*)* @dispose_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispose_request(%struct.st_h2o_http3_server_stream_t* %0) #0 {
  %2 = alloca %struct.st_h2o_http3_server_stream_t*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.st_h2o_http3_server_conn_t*, align 8
  store %struct.st_h2o_http3_server_stream_t* %0, %struct.st_h2o_http3_server_stream_t** %2, align 8
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %39, %1
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %2, align 8
  %9 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %7, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %6
  %15 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %2, align 8
  %16 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i64 %20
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %4, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, i32)** %25, align 8
  %27 = icmp ne i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, i32)* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %14
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, i32)** %32, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %2, align 8
  %36 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %35, i32 0, i32 0
  %37 = call i32 %33(%struct.TYPE_13__* %34, %struct.TYPE_14__* %36, i32 0)
  br label %38

38:                                               ; preds = %28, %14
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %3, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %3, align 8
  br label %6

42:                                               ; preds = %6
  %43 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %2, align 8
  %44 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %2, align 8
  %49 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %48, i32 0, i32 1
  %50 = call i32 @h2o_buffer_dispose(i32** %49)
  br label %51

51:                                               ; preds = %47, %42
  %52 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %2, align 8
  %53 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %73

58:                                               ; preds = %51
  %59 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %2, align 8
  %60 = call %struct.st_h2o_http3_server_conn_t* @get_conn(%struct.st_h2o_http3_server_stream_t* %59)
  store %struct.st_h2o_http3_server_conn_t* %60, %struct.st_h2o_http3_server_conn_t** %5, align 8
  %61 = load %struct.st_h2o_http3_server_conn_t*, %struct.st_h2o_http3_server_conn_t** %5, align 8
  %62 = getelementptr inbounds %struct.st_h2o_http3_server_conn_t, %struct.st_h2o_http3_server_conn_t* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load %struct.st_h2o_http3_server_conn_t*, %struct.st_h2o_http3_server_conn_t** %5, align 8
  %68 = getelementptr inbounds %struct.st_h2o_http3_server_conn_t, %struct.st_h2o_http3_server_conn_t* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, -1
  store i64 %70, i64* %68, align 8
  %71 = load %struct.st_h2o_http3_server_conn_t*, %struct.st_h2o_http3_server_conn_t** %5, align 8
  %72 = call i32 @check_run_blocked(%struct.st_h2o_http3_server_conn_t* %71)
  br label %73

73:                                               ; preds = %58, %51
  %74 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %2, align 8
  %75 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %74, i32 0, i32 0
  %76 = call i32 @h2o_dispose_request(%struct.TYPE_14__* %75)
  ret void
}

declare dso_local i32 @h2o_buffer_dispose(i32**) #1

declare dso_local %struct.st_h2o_http3_server_conn_t* @get_conn(%struct.st_h2o_http3_server_stream_t*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @check_run_blocked(%struct.st_h2o_http3_server_conn_t*) #1

declare dso_local i32 @h2o_dispose_request(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
