; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_stream.c_send_refused_stream.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_stream.c_send_refused_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@H2O_HTTP2_ERROR_REFUSED_STREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*)* @send_refused_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_refused_stream(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @H2O_HTTP2_ERROR_REFUSED_STREAM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call i32 @h2o_http2_encode_rst_stream_frame(i32* %7, i32 %10, i32 %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = call i32 @h2o_http2_conn_request_write(%struct.TYPE_11__* %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = call i32 @h2o_http2_stream_close(%struct.TYPE_11__* %16, %struct.TYPE_10__* %17)
  ret void
}

declare dso_local i32 @h2o_http2_encode_rst_stream_frame(i32*, i32, i32) #1

declare dso_local i32 @h2o_http2_conn_request_write(%struct.TYPE_11__*) #1

declare dso_local i32 @h2o_http2_stream_close(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
