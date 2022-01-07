; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_do_write_req.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_do_write_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.st_h2o_http2client_stream_t = type { %struct.TYPE_11__*, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32, i32* }

@h2o_socket_buffer_prototype = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32)* @do_write_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_write_req(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.st_h2o_http2client_stream_t*, align 8
  %8 = bitcast %struct.TYPE_10__* %4 to i64*
  store i64 %1, i64* %8, align 4
  store i32* %0, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = bitcast i32* %9 to i8*
  %11 = bitcast i8* %10 to %struct.st_h2o_http2client_stream_t*
  store %struct.st_h2o_http2client_stream_t* %11, %struct.st_h2o_http2client_stream_t** %7, align 8
  %12 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %7, align 8
  %13 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %7, align 8
  %23 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  br label %25

25:                                               ; preds = %21, %3
  %26 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %7, align 8
  %27 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %7, align 8
  %33 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = call i32 @h2o_buffer_init(i32** %34, i32* @h2o_socket_buffer_prototype)
  br label %36

36:                                               ; preds = %31, %25
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %7, align 8
  %42 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @h2o_buffer_append(i32** %43, i32 %45, i32 %47)
  br label %49

49:                                               ; preds = %40, %36
  %50 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %7, align 8
  %51 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = call i32 @h2o_linklist_is_linked(i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %49
  %56 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %7, align 8
  %57 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %56, i32 0, i32 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %7, align 8
  %62 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = call i32 @h2o_linklist_insert(i32* %60, i32* %63)
  %65 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %7, align 8
  %66 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %65, i32 0, i32 0
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = call i32 @request_write(%struct.TYPE_11__* %67)
  br label %69

69:                                               ; preds = %55, %49
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @h2o_buffer_init(i32**, i32*) #1

declare dso_local i32 @h2o_buffer_append(i32**, i32, i32) #1

declare dso_local i32 @h2o_linklist_is_linked(i32*) #1

declare dso_local i32 @h2o_linklist_insert(i32*, i32*) #1

declare dso_local i32 @request_write(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
