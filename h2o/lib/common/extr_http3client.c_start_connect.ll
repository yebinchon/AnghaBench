; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http3client.c_start_connect.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http3client.c_start_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http3client_conn_t = type { %struct.TYPE_17__, %struct.TYPE_14__*, i32, %struct.TYPE_12__, %struct.TYPE_16__, i32* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.sockaddr = type { i32 }

@on_connect_timeout = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_http3client_conn_t*, %struct.sockaddr*, i32)* @start_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_connect(%struct.st_h2o_http3client_conn_t* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.st_h2o_http3client_conn_t*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.st_h2o_http3client_conn_t* %0, %struct.st_h2o_http3client_conn_t** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.st_h2o_http3client_conn_t*, %struct.st_h2o_http3client_conn_t** %4, align 8
  %10 = getelementptr inbounds %struct.st_h2o_http3client_conn_t, %struct.st_h2o_http3client_conn_t* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.st_h2o_http3client_conn_t*, %struct.st_h2o_http3client_conn_t** %4, align 8
  %17 = getelementptr inbounds %struct.st_h2o_http3client_conn_t, %struct.st_h2o_http3client_conn_t* %16, i32 0, i32 5
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.st_h2o_http3client_conn_t*, %struct.st_h2o_http3client_conn_t** %4, align 8
  %23 = getelementptr inbounds %struct.st_h2o_http3client_conn_t, %struct.st_h2o_http3client_conn_t* %22, i32 0, i32 4
  %24 = call i32 @h2o_timer_is_linked(%struct.TYPE_16__* %23)
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.st_h2o_http3client_conn_t*, %struct.st_h2o_http3client_conn_t** %4, align 8
  %27 = getelementptr inbounds %struct.st_h2o_http3client_conn_t, %struct.st_h2o_http3client_conn_t* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @on_connect_timeout, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.st_h2o_http3client_conn_t*, %struct.st_h2o_http3client_conn_t** %4, align 8
  %35 = getelementptr inbounds %struct.st_h2o_http3client_conn_t, %struct.st_h2o_http3client_conn_t* %34, i32 0, i32 1
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.st_h2o_http3client_conn_t*, %struct.st_h2o_http3client_conn_t** %4, align 8
  %42 = getelementptr inbounds %struct.st_h2o_http3client_conn_t, %struct.st_h2o_http3client_conn_t* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %48 = load %struct.st_h2o_http3client_conn_t*, %struct.st_h2o_http3client_conn_t** %4, align 8
  %49 = getelementptr inbounds %struct.st_h2o_http3client_conn_t, %struct.st_h2o_http3client_conn_t* %48, i32 0, i32 1
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = call i32 @ptls_iovec_init(i32* null, i32 0)
  %55 = load %struct.st_h2o_http3client_conn_t*, %struct.st_h2o_http3client_conn_t** %4, align 8
  %56 = getelementptr inbounds %struct.st_h2o_http3client_conn_t, %struct.st_h2o_http3client_conn_t* %55, i32 0, i32 2
  %57 = call i32 @quicly_connect(i32** %7, i32 %40, i32 %46, %struct.sockaddr* %47, i32* null, %struct.TYPE_15__* %53, i32 %54, i32* %56, i32* null)
  store i32 %57, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %3
  %60 = load %struct.st_h2o_http3client_conn_t*, %struct.st_h2o_http3client_conn_t** %4, align 8
  %61 = getelementptr inbounds %struct.st_h2o_http3client_conn_t, %struct.st_h2o_http3client_conn_t* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  br label %83

63:                                               ; preds = %3
  %64 = load %struct.st_h2o_http3client_conn_t*, %struct.st_h2o_http3client_conn_t** %4, align 8
  %65 = getelementptr inbounds %struct.st_h2o_http3client_conn_t, %struct.st_h2o_http3client_conn_t* %64, i32 0, i32 1
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load %struct.st_h2o_http3client_conn_t*, %struct.st_h2o_http3client_conn_t** %4, align 8
  %74 = getelementptr inbounds %struct.st_h2o_http3client_conn_t, %struct.st_h2o_http3client_conn_t* %73, i32 0, i32 0
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @h2o_http3_setup(%struct.TYPE_17__* %74, i32* %75)
  store i32 %76, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %63
  br label %83

79:                                               ; preds = %63
  %80 = load %struct.st_h2o_http3client_conn_t*, %struct.st_h2o_http3client_conn_t** %4, align 8
  %81 = getelementptr inbounds %struct.st_h2o_http3client_conn_t, %struct.st_h2o_http3client_conn_t* %80, i32 0, i32 0
  %82 = call i32 @h2o_http3_send(%struct.TYPE_17__* %81)
  br label %86

83:                                               ; preds = %78, %59
  %84 = load %struct.st_h2o_http3client_conn_t*, %struct.st_h2o_http3client_conn_t** %4, align 8
  %85 = call i32 @destroy_connection(%struct.st_h2o_http3client_conn_t* %84)
  br label %86

86:                                               ; preds = %83, %79
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @h2o_timer_is_linked(%struct.TYPE_16__*) #1

declare dso_local i32 @quicly_connect(i32**, i32, i32, %struct.sockaddr*, i32*, %struct.TYPE_15__*, i32, i32*, i32*) #1

declare dso_local i32 @ptls_iovec_init(i32*, i32) #1

declare dso_local i32 @h2o_http3_setup(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @h2o_http3_send(%struct.TYPE_17__*) #1

declare dso_local i32 @destroy_connection(%struct.st_h2o_http3client_conn_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
