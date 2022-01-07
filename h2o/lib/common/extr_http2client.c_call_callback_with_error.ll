; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_call_callback_with_error.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_call_callback_with_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http2client_stream_t = type { %struct.TYPE_10__, %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*, i8*)*, i32 (%struct.TYPE_10__*, i8*, i32, i32, i32, i32*, i32, i32)* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_10__*, i32, i32)* }
%struct.TYPE_8__ = type { i32 }

@H2O_SEND_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_http2client_stream_t*, i8*)* @call_callback_with_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_callback_with_error(%struct.st_h2o_http2client_stream_t* %0, i8* %1) #0 {
  %3 = alloca %struct.st_h2o_http2client_stream_t*, align 8
  %4 = alloca i8*, align 8
  store %struct.st_h2o_http2client_stream_t* %0, %struct.st_h2o_http2client_stream_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %3, align 8
  %10 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %50 [
    i32 128, label %13
    i32 130, label %24
    i32 129, label %34
  ]

13:                                               ; preds = %2
  %14 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %3, align 8
  %15 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i32 (%struct.TYPE_10__*, i8*, i32, i32, i32, i32*, i32, i32)*, i32 (%struct.TYPE_10__*, i8*, i32, i32, i32, i32*, i32, i32)** %17, align 8
  %19 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %3, align 8
  %20 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %19, i32 0, i32 0
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @h2o_iovec_init(i32* null, i32 0)
  %23 = call i32 %18(%struct.TYPE_10__* %20, i8* %21, i32 512, i32 0, i32 %22, i32* null, i32 0, i32 0)
  br label %50

24:                                               ; preds = %2
  %25 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %3, align 8
  %26 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_10__*, i8*)*, i32 (%struct.TYPE_10__*, i8*)** %28, align 8
  %30 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %3, align 8
  %31 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %30, i32 0, i32 0
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 %29(%struct.TYPE_10__* %31, i8* %32)
  br label %50

34:                                               ; preds = %2
  %35 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %3, align 8
  %36 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_10__*, i32, i32)*, i32 (%struct.TYPE_10__*, i32, i32)** %37, align 8
  %39 = icmp ne i32 (%struct.TYPE_10__*, i32, i32)* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %3, align 8
  %42 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_10__*, i32, i32)*, i32 (%struct.TYPE_10__*, i32, i32)** %43, align 8
  %45 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %3, align 8
  %46 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %45, i32 0, i32 0
  %47 = load i32, i32* @H2O_SEND_STATE_ERROR, align 4
  %48 = call i32 %44(%struct.TYPE_10__* %46, i32 0, i32 %47)
  br label %49

49:                                               ; preds = %40, %34
  br label %50

50:                                               ; preds = %2, %49, %24, %13
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @h2o_iovec_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
